import 'dart:io';

import 'package:wasla_driver/app/shared/common/common_libs.dart';

class CreateVehicleRequest extends Equatable {
  final String category;
  final String licenseNumber;
  final String licenseWord;
  final String capacity;
  final String brand;
  final String packageCapacity;
  final String adsSidesNumber;
  final File image;
  final String publicDriverId;

  const CreateVehicleRequest({
    required this.category,
    required this.licenseNumber,
    required this.licenseWord,
    required this.capacity,
    required this.brand,
    required this.packageCapacity,
    required this.adsSidesNumber,
    required this.image,
    required this.publicDriverId,
  });

  @override
  List<Object> get props => [
        category,
        licenseNumber,
        licenseWord,
        capacity,
        brand,
        packageCapacity,
        adsSidesNumber,
        image,
        publicDriverId,
      ];
}
