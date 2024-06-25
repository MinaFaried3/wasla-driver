import 'package:cached_network_image/cached_network_image.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/models/PublicDriverVehicleResponse.dart';
import 'package:wasla_driver/presentation/modules/home/profile/model/vehicle_data_item.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/vehicle/vehicle_data_item.dart';
import 'package:wasla_driver/presentation/widgets/animation/slidable_widget.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';
import 'package:wasla_driver/presentation/widgets/section/section_with_tittle.dart';

class DriverVehicle extends StatefulWidget {
  const DriverVehicle({
    super.key,
    required this.vehicle,
  });
  final PublicDriverVehicleModel vehicle;

  @override
  State<DriverVehicle> createState() => _DriverVehicleState();
}

class _DriverVehicleState extends State<DriverVehicle> {
  late final List<VehicleSingleDataModel> vehicleData;
  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return AppSlidingWidget(
      duration: DurationManager.s4,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: SectionWithTitle(
          tittle: AppStrings.yourVehicle.tr(),
          iconPath: Assets.svgTripLineIcon,
          iconsSize: 50,
          content: Container(
            padding: const EdgeInsets.all(8),
            decoration: buildSectionDecoration(color: ColorsManager.darkTeal),
            child: Column(
              children: [
                if (widget.vehicle.imageUrl != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                      imageUrl: widget.vehicle.imageUrl!,
                      height: 150.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                const VerticalSpace(30),
                GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 10 / 4,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: vehicleData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => VehicleDataItem(
                          vehicleData: vehicleData[index],
                          index: index,
                        ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void init() {
    vehicleData = [
      VehicleSingleDataModel(
          labelText: AppStrings.vehicleBrand.tr(),
          svgPrefixPath: Assets.svgBusIcon,
          value: widget.vehicle.brand.orEmpty()),
      VehicleSingleDataModel(
          labelText: AppStrings.vehicleCategory.tr(),
          svgPrefixPath: Assets.svgTripLineIcon,
          value: widget.vehicle.category.orEmpty()),
      VehicleSingleDataModel(
          labelText: AppStrings.vehicleCapacity.tr(),
          svgPrefixPath: Assets.svgTicketsIcon,
          value: widget.vehicle.capcity.toString().orEmpty()),
      VehicleSingleDataModel(
          labelText: AppStrings.vehiclePackageCapacity.tr(),
          svgPrefixPath: Assets.svgShippingIcon,
          value: widget.vehicle.packageCapcity.toString().orEmpty()),
      VehicleSingleDataModel(
          labelText: AppStrings.vehicleLicenseWord.tr(),
          svgPrefixPath: Assets.svgLicensePlateIcon,
          value: widget.vehicle.licenseWord.orEmpty()),
      VehicleSingleDataModel(
          labelText: AppStrings.vehicleLicenseNumber.tr(),
          svgPrefixPath: Assets.svgLicensePlateIcon,
          value: widget.vehicle.licenseNumber.toString().orEmpty()),
    ];
  }
}
