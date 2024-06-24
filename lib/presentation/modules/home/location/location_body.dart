import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/location/custom_maps.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';

class LocationBody extends StatefulWidget {
  const LocationBody({super.key});

  @override
  State<LocationBody> createState() => _LocationBodyState();
}

class _LocationBodyState extends State<LocationBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentTripCubit, CurrentTripState>(
      builder: (context, state) {
        return state.maybeWhen(
            getCurrentTripSuccess: (currentTrip) {
              if (context.read<CurrentTripCubit>().tripStarted &&
                  currentTrip != null) {
                return CustomMaps(
                  start: currentTrip!.startStation!,
                  end: currentTrip!.endStation!,
                );
              } else {
                return Center(
                  child: Text('الرحلة لم تبدا بعد'),
                );
              }
            },
            orElse: () => SizedBox());
      },
    );
  }
}
