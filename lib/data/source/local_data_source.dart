import 'package:hive_flutter/adapters.dart';
import 'package:wasla_driver/app/services/hive/hive_constants.dart';
import 'package:wasla_driver/app/shared/common/printer_manager.dart';
import 'package:wasla_driver/models/DriverResponse.dart';

class LocalDataSource {
  Future<T> getOpenCloseHiveBox<T>({
    required String boxName,
    required String fieldName,
  }) async {
    Box hiveBox = await Hive.openBox(boxName);
    T model = (hiveBox.get(fieldName) as T);
    //todo
    // hiveBox.close();
    return model;
  }

  void setPublicDriverModel(PublicDriverModel driver) async {
    Box hiveBox = await Hive.openBox(HiveConstants.publicDriverBox);
    hiveBox.put(HiveConstants.publicDriverModel, driver);

    PublicDriverModel model = await getPublicDriverModel();
    PrintManager.print('From Local Source', color: ConsoleColor.blue);
    PrintManager.print(model, color: ConsoleColor.blue);
  }

  Future<PublicDriverModel> getPublicDriverModel() async {
    PublicDriverModel driverModel =
        await getOpenCloseHiveBox<PublicDriverModel>(
      boxName: HiveConstants.publicDriverBox,
      fieldName: HiveConstants.publicDriverModel,
    );

    return driverModel.copyWith();
  }
}
