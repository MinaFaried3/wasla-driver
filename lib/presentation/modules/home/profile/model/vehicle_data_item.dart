import 'package:wasla_driver/app/shared/common/common_libs.dart';

class VehicleSingleDataModel extends Equatable {
  final String labelText, svgPrefixPath, value;

  const VehicleSingleDataModel(
      {required this.labelText,
      required this.svgPrefixPath,
      required this.value});

  @override
  List<Object> get props => [labelText, svgPrefixPath, value];
}
