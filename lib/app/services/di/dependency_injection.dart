import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:wasla_driver/app/local_cubit.dart';
import 'package:wasla_driver/app/shared/common/bloc_observer.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/api_service_client.dart';
import 'package:wasla_driver/data/dio_factory.dart';
import 'package:wasla_driver/data/network_checker.dart';
import 'package:wasla_driver/data/source/local_data_source.dart';
import 'package:wasla_driver/presentation/common/cubits/password_icon_cubit/password_icon_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/history/cubit/trips_history_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/home/cubit/home_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/main_home_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/create_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/get_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/profile_cubit.dart';
import 'package:wasla_driver/presentation/modules/login/cubit/login_cubit.dart';
import 'package:wasla_driver/presentation/modules/register/bloc/check_username_bloc.dart';
import 'package:wasla_driver/presentation/modules/register/cubit/register_cubit.dart';

final GetIt getIt = GetIt.instance;

final class DIModulesManger {
  static Future<void> prepareAppModule() async {
    //get it
    getIt.allowReassignment = true;

    //bloc
    if (kDebugMode) {
      getIt.registerLazySingleton<MyBlocObserver>(() => MyBlocObserver());
    }

    // //shared preferences
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    // //app preferences
    getIt.registerLazySingleton<AppPreferences>(
        () => AppPreferences(sharedPreferences: getIt<SharedPreferences>()));
    //
    //network checker
    getIt.registerLazySingleton<NetworkChecker>(() =>
        NetworkCheckerImpl(connectionChecker: InternetConnectionChecker()));
    //
    //dio factory
    final Dio dio = Dio();
    getIt.registerLazySingleton<Dio>(() => dio);
    getIt.registerLazySingleton<DioFactory>(() => DioFactory(
          appPreferences: getIt<AppPreferences>(),
          dio: getIt<Dio>(),
        ));
    //
    // api service client
    final Dio getDio = await getIt<DioFactory>().getDio();
    getIt.registerLazySingleton<ApiServiceClient>(
        () => ApiServiceClient(getDio));
    //
    // //remote data source
    // getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(
    //     apiServiceClient: getIt<ApiServiceClient>(),
    //     appPreferences: getIt<AppPreferences>()));
    //
    // //local data source
    getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
    //
    //repository
    getIt.registerLazySingleton<PublicDriverRepository>(
      () => PublicDriverRepository(
        apiServiceClient: getIt<ApiServiceClient>(),
        localDataSource: getIt<LocalDataSource>(),
        networkChecker: getIt<NetworkChecker>(),
      ),
    );
    //
    // //cubit
    getIt.registerFactory<LocalCubit>(
        () => LocalCubit(localDataSource: getIt<LocalDataSource>()));
  }

  static void _registerFactory<T extends Object>(T object) {
    bool isRegistered = GetIt.I.isRegistered<T>();

    if (!isRegistered) {
      getIt.registerFactory<T>(() => object);
    }

    _printHint<T>(isRegistered);
  }

  static void _printHint<T extends Object>(bool isRegistered) {
    if (isRegistered) {
      PrintManager.printHint(
        '$T is already registered factory no thing new',
      );
    } else {
      PrintManager.printHint(
        '$T is registered factory',
      );
    }
  }

  static void _printIsRegistered<T extends Object>() {
    PrintManager.printHint(
      '$T is registered factory',
    );
  }

  static void _registerFactoryBloc<TYPE extends Bloc>(TYPE bloc) {
    if (!(GetIt.I.isRegistered<TYPE>() && getIt<TYPE>().isClosed)) {
      getIt.registerFactory<TYPE>(() => bloc);
      PrintManager.print("${bloc.toString()} is registered factory",
          color: ConsoleColor.brightBlack);
    } else {
      PrintManager.print("${bloc.toString()} is not registered factory",
          color: ConsoleColor.brightRed);
    }
  }

  static void _registerFactoryCubit<TYPE extends Cubit>(TYPE cubit) {
    if (!GetIt.I.isRegistered<TYPE>()) {
      getIt.registerFactory<TYPE>(() => cubit);
      PrintManager.print("${cubit.toString()} is registered factory",
          color: ConsoleColor.brightBlack);

      PrintManager.print("cubit.isClosed ${getIt<TYPE>().isClosed} ",
          color: ConsoleColor.redBg);
    } else {
      PrintManager.print("${cubit.toString()} is not registered factory",
          color: ConsoleColor.brightRed);
    }
  }

  static void disposeBloc<T extends BlocBase>() {
    getIt<T>().close();

    getIt.unregister<T>();
    if (!(GetIt.I.isRegistered<T>())) {
      PrintManager.printHint(
        '$T is unregistered',
      );
    }
  }

  //
  // static void prepareOnboardingModule() {
  //   _registerFactory<OnboardingCubit>(OnboardingCubit());
  //   _registerFactory<OnChangeOnBoardingPageCubit>(
  //       OnChangeOnBoardingPageCubit());
  // }
  //
  static void _prepareAuthModule() {
    // _registerFactory<AuthRepository>(AuthRepositoryImpl(
    //   remoteDataSource: getIt<RemoteDataSource>(),
    //   localDataSource: getIt<LocalDataSource>(),
    //   networkChecker: getIt<NetworkChecker>(),
    // ));

    if (!GetIt.I.isRegistered<PasswordIconCubit>()) {
      getIt.registerFactory<PasswordIconCubit>(() => PasswordIconCubit());

      _printIsRegistered<PasswordIconCubit>();
    }
  }

  //
  static void prepareLoginModule() {
    _prepareAuthModule();

    ///cubit
    _registerFactory<LoginCubit>(
        LoginCubit(remoteDataSource: getIt<PublicDriverRepository>()));

    if (!(GetIt.I.isRegistered<LoginCubit>())) {
      getIt.registerFactory<LoginCubit>(
          () => LoginCubit(remoteDataSource: getIt<PublicDriverRepository>()));
      _printIsRegistered<LoginCubit>();
    }

    // _registerFactoryCubit<LoginCubit>(LoginCubit(getIt<LoginUseCase>()));
  }

  //
  static void prepareRegisterModule() {
    _prepareAuthModule();

    ///use case

    ///cubit

    // _registerFactory<RegisterCubit>(RegisterCubit(getIt<RegisterUseCase>()));
    // _registerFactory<CheckUsernameBloc>(
    //     CheckUsernameBloc(getIt<CheckUsernameUseCase>()));
    // _registerFactory<FormIndexCubit>(FormIndexCubit());

    if (!GetIt.I.isRegistered<RegisterCubit>()) {
      getIt.registerFactory<RegisterCubit>(
          () => RegisterCubit(getIt<PublicDriverRepository>()));

      _printIsRegistered<RegisterCubit>();
    }
    if (!GetIt.I.isRegistered<CheckUsernameBloc>()) {
      getIt.registerFactory<CheckUsernameBloc>(
          () => CheckUsernameBloc(getIt<PublicDriverRepository>()));

      _printIsRegistered<CheckUsernameBloc>();
    }
    // if (!GetIt.I.isRegistered<FormIndexCubit>()) {
    //   getIt.registerFactory<FormIndexCubit>(() => FormIndexCubit());
    //
    //   _printIsRegistered<FormIndexCubit>();
    // }
  }

  //
  // static void prepareVerificationModule() {
  //   _prepareAuthModule();
  //
  //   //edit use cases
  //   _registerFactory<EditEmailUseCase>(
  //       EditEmailUseCase(repository: getIt<AuthRepository>()));
  //   _registerFactory<EditPhoneUseCase>(
  //       EditPhoneUseCase(repository: getIt<AuthRepository>()));
  //
  //   //verify use cases
  //   _registerFactory<SendVerificationEmailUseCase>(
  //       SendVerificationEmailUseCase(repository: getIt<AuthRepository>()));
  //   _registerFactory<ConfirmEmailUseCase>(
  //       ConfirmEmailUseCase(repository: getIt<AuthRepository>()));
  //
  //   //cubits
  //   if (!GetIt.I.isRegistered<EditContactsCubit>()) {
  //     getIt.registerFactory<EditContactsCubit>(() => EditContactsCubit(
  //           editEmailUseCase: getIt<EditEmailUseCase>(),
  //           editPhoneUseCase: getIt<EditPhoneUseCase>(),
  //         ));
  //
  //     _printIsRegistered<EditContactsCubit>();
  //   }
  //
  //   if (!GetIt.I.isRegistered<EmailVerifyCubit>()) {
  //     getIt.registerFactory<EmailVerifyCubit>(
  //       () => EmailVerifyCubit(
  //           sendVerificationEmailUseCase: getIt<SendVerificationEmailUseCase>(),
  //           confirmEmailUseCase: getIt<ConfirmEmailUseCase>()),
  //     );
  //
  //     _printIsRegistered<EmailVerifyCubit>();
  //   }
  // }
  //
  static void prepareHomeModule() {
    _prepareAuthModule();

    //cubits
    //home cubit
    if (!GetIt.I.isRegistered<HomeCubit>()) {
      getIt.registerFactory<HomeCubit>(() => HomeCubit());

      _printIsRegistered<HomeCubit>();
    }

    //main home
    prepareMainModule();
    // prepareProfileModule();
  }

  //
  static void prepareMainModule() {
    _prepareAuthModule();

    //cubits
    if (!GetIt.I.isRegistered<MainHomeCubit>()) {
      getIt.registerFactory<MainHomeCubit>(() =>
          MainHomeCubit(remoteDataSource: getIt<PublicDriverRepository>()));

      _printIsRegistered<MainHomeCubit>();
    }
    prepareProfileModule();
    prepareTripsHistoryModule();
  }

  //
  static void prepareProfileModule() {
    //cubits
    if (!GetIt.I.isRegistered<ProfileCubit>()) {
      getIt.registerFactory<ProfileCubit>(() => ProfileCubit());

      _printIsRegistered<ProfileCubit>();
    }
    if (!GetIt.I.isRegistered<CreateVehicleCubit>()) {
      getIt.registerFactory<CreateVehicleCubit>(() => CreateVehicleCubit());

      _printIsRegistered<CreateVehicleCubit>();
    }
    if (!GetIt.I.isRegistered<GetVehicleCubit>()) {
      getIt.registerFactory<GetVehicleCubit>(() => GetVehicleCubit());

      _printIsRegistered<GetVehicleCubit>();
    }
  }

  static void prepareTripsHistoryModule() {
    //cubits
    if (!GetIt.I.isRegistered<TripsHistoryCubit>()) {
      getIt.registerFactory<TripsHistoryCubit>(() => TripsHistoryCubit());

      _printIsRegistered<TripsHistoryCubit>();
    }
  }
}
