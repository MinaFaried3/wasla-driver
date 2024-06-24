import 'package:wasla_driver/app/services/hive/hive_constants.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/models/DriverResponse.dart';

class TokensTypeAdapter extends TypeAdapter<Tokens> {
  @override
  Tokens read(BinaryReader reader) {
    return Tokens(
      token: reader.readString(),
      tokenExpiryDate: reader.readString(),
      refreshToken: reader.readString(),
      refTokenExpiryDate: reader.readString(),
    );
  }

  @override
  int get typeId => HiveObjectId.tokensId;

  @override
  void write(BinaryWriter writer, Tokens obj) {
    writer.writeString(obj.token.orEmpty());
    writer.writeString(obj.tokenExpiryDate.orEmpty());
    writer.writeString(obj.refreshToken.orEmpty());
    writer.writeString(obj.refTokenExpiryDate.orEmpty());
  }
}

class ConnectionTypeAdapter extends TypeAdapter<Connection> {
  @override
  int get typeId => HiveObjectId.connectionsId;

  @override
  Connection read(BinaryReader reader) {
    return Connection(
      email: reader.readString(),
      phone: reader.readString(),
      emailConfirmed: reader.readBool(),
      phoneConfirmed: reader.readBool(),
    );
  }

  @override
  void write(BinaryWriter writer, Connection obj) {
    writer.writeString(obj.email.orEmpty());
    writer.writeString(obj.phone.orEmpty());
    writer.writeBool(obj.emailConfirmed.orFalse());
    writer.writeBool(obj.phoneConfirmed.orFalse());
  }
}

class PublicDriverModelTypeAdapter extends TypeAdapter<PublicDriverModel> {
  @override
  int get typeId => HiveObjectId.publicDriverModelId;

  @override
  PublicDriverModel read(BinaryReader reader) {
    return PublicDriverModel(
      licenseImageUrl: reader.readString(),
      licenseNum: reader.readString(),
      driverPermissions: reader.read(),
      orgainzation: reader.read(),
      trips: reader.read(),
      rates: reader.read(),
      firstName: reader.readString(),
      lastName: reader.readString(),
      photoUrl: reader.readString(),
      isAuthenticated: reader.readBool(),
      connectionData: reader.read() as Connection?,
      userId: reader.readString(),
      userName: reader.readString(),
      role: reader.readString(),
      tokensData: reader.read() as Tokens?,
    );
  }

  @override
  void write(BinaryWriter writer, PublicDriverModel obj) {
    writer.writeString(obj.licenseImageUrl.orEmpty());
    writer.writeString(obj.licenseNum.orEmpty());
    writer.write(obj.driverPermissions);
    writer.write(obj.orgainzation);
    writer.write(obj.trips);
    writer.write(obj.rates);
    writer.writeString(obj.firstName.orEmpty());
    writer.writeString(obj.lastName.orEmpty());
    writer.writeString(obj.photoUrl.orEmpty());
    writer.writeBool(obj.isAuthenticated.orFalse());
    writer.write(obj.connectionData);
    writer.writeString(obj.userId.orEmpty());
    writer.writeString(obj.userName.orEmpty());
    writer.writeString(obj.role.orEmpty());
    writer.write(obj.tokensData);
  }
}
