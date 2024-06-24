import 'package:wasla_driver/app/local_cubit.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/current_passengers_trips_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/current_trip_details_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/cubit/update_trip_status_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/accepts_request_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/create_trip_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';

final CurrentTripCubit currentTripCubit = CurrentTripCubit();

class WaslaDriverApp extends StatefulWidget {
  final Routes route;

  //named constructor

  const WaslaDriverApp._internal({required this.route});

  //singleton instance
  static WaslaDriverApp? _instance;

  factory WaslaDriverApp({required Routes route}) {
    _instance ??= WaslaDriverApp._internal(route: route);
    return _instance!;
  }

  @override
  State<WaslaDriverApp> createState() => _WaslaDriverAppState();
}

class _WaslaDriverAppState extends State<WaslaDriverApp> {
  @override
  void didChangeDependencies() {
    context.setLocale(LocalizationManager.arabicLocal);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LocalCubit>(),
        ),
        BlocProvider(
          create: (context) => currentTripCubit,
        ),
        BlocProvider(
          create: (context) => CreateTripCubit(),
        ),
        BlocProvider(
          create: (context) => AcceptsRequestCubit(),
        ),
        BlocProvider(
          create: (context) => CurrentPassengersTripsCubit(),
        ),
        BlocProvider(
          create: (context) => UpdateTripStatusCubit(),
        ),
        BlocProvider(
          create: (context) => CurrentTripDetailsCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(
          AppConstants.screenUtilWidth,
          AppConstants.screenUtilHeight,
        ),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: AppStrings.appTitle,
          darkTheme: getApplicationTheme(),
          themeMode: ThemeMode.dark,
          home: child,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: widget.route.path,
          // initialRoute: Routes.registerRoute.path,
        ),
      ),
    );
  }
}
