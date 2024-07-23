import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/helper_functions.dart';
import 'package:wasla_driver/models/CurrentTripResponse.dart';

class CustomMaps extends StatefulWidget {
  const CustomMaps({super.key, required this.start, required this.end});
  final StartStation start;
  final EndStation end;
  @override
  State<CustomMaps> createState() => _CustomMapsState();
}

class _CustomMapsState extends State<CustomMaps> {
  late CameraPosition cameraPosition;

  GoogleMapController? googleMapController;
  late LocationService locationService;
  String? night;
  final Set<Marker> markers = {};
  final Set<Polyline> polyLines = {};
  @override
  void initState() {
    super.initState();
    cameraPosition = CameraPosition(
      target: LatLng(double.parse(widget.start.latitude!),
          double.parse(widget.start.langtitude!)),
      zoom: 12,
    );
    locationService = LocationService();
    updateMyLocation();

    initMarkers();
    // initPolyLines();
  }

  int id = 3;
  @override
  void dispose() {
    googleMapController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        FutureBuilder(
          future: initMapStyle(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: LoadingIndicator());
            }
            if (snapshot.hasData) {
              return GoogleMap(
                markers: markers,
                polylines: polyLines,
                onMapCreated: (googleMapController) {
                  this.googleMapController = googleMapController;
                },
                style: snapshot.data,
                zoomControlsEnabled: false,
                cameraTargetBounds: CameraTargetBounds(
                  LatLngBounds(
                    northeast:
                        const LatLng(31.57102600496208, 34.12687056263415),
                    southwest:
                        const LatLng(21.960709634351097, 24.758051445996273),
                  ),
                ),
                initialCameraPosition: cameraPosition,
              );
            }
            return const Center(child: Text('error'));
          },
        ),
      ],
    );
  }

  Future<String> initMapStyle() async {
    night = await DefaultAssetBundle.of(context)
        .loadString('assets/maps_styles/night_style.json');
    print(night);
    return night!;
  }

  void initMarkers() async {
    var customIcon = BitmapDescriptor.fromBytes(await getImageFromRawData(
        imgPath: 'assets/images/logo_icon.png', width: 150));

    markers.addAll([
      Marker(
        markerId: MarkerId(
          widget.start.stationId.toString(),
        ),
        icon: customIcon,
        position: LatLng(double.parse(widget.start!.latitude!),
            double.parse(widget.start!.langtitude!)),
      ),
      Marker(
        markerId: MarkerId(
          widget.end.stationId.toString(),
        ),
        icon: customIcon,
        position: LatLng(double.parse(widget.end!.latitude!),
            double.parse(widget.end!.langtitude!)),
      ),
    ]);
    setState(() {});
  }

  void initPolyLines() {
    var polyLine = Polyline(
        patterns: const [
          // PatternItem.dash(5),
          PatternItem.dot,
        ],
        geodesic: true,
        polylineId: PolylineId(id.toString()),
        color: Colors.teal,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
        width: 5,
        points: const [
          LatLng(26.900484898584722, 31.43791183611953),
          LatLng(26.896944770405693, 31.44222427539095),
          LatLng(26.90524420454522, 31.43179788557002),
        ]);

    polyLines.add(polyLine);
  }

  void updateMyLocation() async {
    var customIcon = BitmapDescriptor.fromBytes(await getImageFromRawData(
        imgPath: AssetsProvider.logoIcon, width: 150));
    await locationService.checkAndRequestLocationService();
    bool hasPermission =
        await locationService.checkAndRequestLocationPermission();
    if (hasPermission) {
      locationService.getRealTimeLocation(
          updatedLocationDistance: 50,
          updatedLocationTime: 5,
          onLocationChangedListener: (locationData) {
            var currLocation =
                LatLng(locationData.latitude!, locationData.longitude!);

            var myMarker = Marker(
              markerId: const MarkerId(
                'my_marker',
              ),
              icon: customIcon,
              position: currLocation,
            );

            markers.add(myMarker);
            getIt<PublicDriverRepository>().updateLocation(
                latitude: locationData.latitude!.toString(),
                langtitude: locationData.longitude!.toString());
            cameraPosition = CameraPosition(target: currLocation, zoom: 16);
            googleMapController
                ?.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
            setState(() {});
          });
    }
  }
}

/*
   world view 0 -> 3
   country view 4->6
   government view 7 -> 9
   city view 10 -> 12
   street view 13 -> 17
   building view 18 -> 20
* */

final class LocationService extends Equatable {
  late final Location location = Location();

  Future<bool> checkAndRequestLocationService() async {
    bool enabled = await location.serviceEnabled();

    if (!enabled) {
      enabled = await location.requestService();
    }

    return enabled;
  }

  Future<bool> checkAndRequestLocationPermission() async {
    PermissionStatus status = await location.hasPermission();

    if (status == PermissionStatus.deniedForever) {
      return false;
    }

    if (status == PermissionStatus.denied) {
      status = await location.requestPermission();

      return status == PermissionStatus.granted;
    }

    return true;
  }

  Future<LatLng> getMyCurrentLocation() async {
    await checkAndRequestLocationService();
    bool hasPermission = await checkAndRequestLocationPermission();

    if (hasPermission) {
      final currentLocation = await location.getLocation();
      return LatLng(currentLocation.latitude!, currentLocation.longitude!);
    }

    return const LatLng(26.896944770405693, 31.44222427539095);
  }

  void getRealTimeLocation({
    double? updatedLocationDistance,
    int? updatedLocationTime,
    required void Function(LocationData)? onLocationChangedListener,
  }) {
    location.changeSettings(
      distanceFilter: updatedLocationDistance,
      interval: updatedLocationTime,
    );

    location.onLocationChanged.listen(onLocationChangedListener);
  }

  void updateMyLocation({
    double? updatedLocationDistance,
    int? updatedLocationTime,
    required void Function(LocationData)? onLocationChangedListener,
  }) async {
    await checkAndRequestLocationService();
    bool hasPermission = await checkAndRequestLocationPermission();

    if (hasPermission) {
      getRealTimeLocation(
        updatedLocationDistance: updatedLocationDistance,
        updatedLocationTime: updatedLocationTime,
        onLocationChangedListener: onLocationChangedListener,
      );
    }
  }

  @override
  List<Object> get props => [location];
}
