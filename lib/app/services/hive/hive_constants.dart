import 'package:wasla_driver/app/services/hive/type_adapter/public_driver_type_adapter.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';

abstract class HiveConstants {
  static const String publicDriverBox = "publicDriverBox";
  static const String orgDriverBox = "orgDriverBox";
  static const String publicDriverModel = "publicDriverModel";
  static const String orgDriverModel = "orgDriverModel";

  static void registerHiveTypeAdapters() {
    Hive.registerAdapter(TokensTypeAdapter());
    Hive.registerAdapter(ConnectionTypeAdapter());
    Hive.registerAdapter(PublicDriverModelTypeAdapter());
  }
}

abstract class HiveObjectId {
  static const int publicDriverModelId = 0;
  static const int tokensId = 1;
  static const int connectionsId = 2;
}
