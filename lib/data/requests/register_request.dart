import 'dart:io';

import 'package:wasla_driver/app/shared/common/common_libs.dart';

class RegisterRequest extends Equatable {
  final File profileImageFile;
  final File licenseImageFile;
  final String licenseNum;
  final String phoneNumber;
  final String password;
  final String email;
  final String firstName;
  final String lastName;
  final String userName;

  const RegisterRequest({
    required this.profileImageFile,
    required this.licenseImageFile,
    required this.licenseNum,
    required this.phoneNumber,
    required this.password,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.userName,
  });

  @override
  List<Object> get props => [
        profileImageFile,
        licenseImageFile,
        licenseNum,
        phoneNumber,
        password,
        email,
        firstName,
        lastName,
        userName,
      ];
}
