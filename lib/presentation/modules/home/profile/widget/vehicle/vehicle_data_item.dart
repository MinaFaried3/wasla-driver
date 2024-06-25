import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/profile/model/vehicle_data_item.dart';
import 'package:wasla_driver/presentation/modules/home/profile/widget/personal_data/profile_tile.dart';

class VehicleDataItem extends StatelessWidget {
  const VehicleDataItem(
      {super.key, required this.vehicleData, required this.index});

  final VehicleSingleDataModel vehicleData;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          vehicleData.labelText,
          style: getBoldStyle(),
        ),
        ProfileTile(
          iconPath: vehicleData.svgPrefixPath,
          tittle: vehicleData.value,
          iconSize: index == 1 ? 40 : null,
          iconColor: ColorsManager.tealPrimary500,
        )
      ],
    );
  }
}
