import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:wasla_driver/app/services/hive/hive_constants.dart';
import 'package:wasla_driver/app/shared/common/bloc_observer.dart';
import 'package:wasla_driver/app/wasla.dart';

import 'app/shared/common/common_libs.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  HiveConstants.registerHiveTypeAdapters();
  await EasyLocalization.ensureInitialized();
  await DIModulesManger.prepareAppModule();
  Bloc.observer = getIt<MyBlocObserver>();

  final Routes openingRoute = await getIt<AppPreferences>().getOpeningRoute();
  PrintManager.print("the opening route is $openingRoute",
      color: ConsoleColor.blueBg);

  runApp(
    EasyLocalization(
      supportedLocales: const [
        LocalizationManager.arabicLocal,
        LocalizationManager.englishLocal,
      ],
      path: LocalizationManager.assetsPath,
      child: Phoenix(
        child: WaslaDriverApp(
          route: openingRoute,
        ),
      ),
    ),
  );
}
