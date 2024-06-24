import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/common/cubits/password_icon_cubit/password_icon_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/home/cubit/home_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/main_home_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/create_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/get_vehicle_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/profile/cubit/profile_cubit.dart';
import 'package:wasla_driver/presentation/modules/login/cubit/login_cubit.dart';
import 'package:wasla_driver/presentation/modules/register/bloc/check_username_bloc.dart';
import 'package:wasla_driver/presentation/modules/register/cubit/register_cubit.dart';

class BlocProvidersManager {
  static final List<BlocProvider> loginProviders = [
    BlocProvider<PasswordIconCubit>.value(
      value: getIt<PasswordIconCubit>(),
    ),
    BlocProvider<LoginCubit>.value(
      value: getIt<LoginCubit>(),
    )
  ];
  static final List<BlocProvider> registerProviders = [
    BlocProvider<PasswordIconCubit>.value(
      value: getIt<PasswordIconCubit>(),
    ),
    BlocProvider<CheckUsernameBloc>.value(
      value: getIt<CheckUsernameBloc>(),
    ),
    BlocProvider<RegisterCubit>.value(
      value: getIt<RegisterCubit>(),
    )
  ];

  static final List<BlocProvider> homeProviders = [
    BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
    BlocProvider<MainHomeCubit>(create: (context) => getIt<MainHomeCubit>()),
  ];

  static final List<BlocProvider> profileProviders = [
    BlocProvider<ProfileCubit>.value(
      value: getIt<ProfileCubit>(),
    ),
    BlocProvider<GetVehicleCubit>.value(
      value: getIt<GetVehicleCubit>(),
    ),
    BlocProvider<CreateVehicleCubit>.value(
      value: getIt<CreateVehicleCubit>(),
    )
  ];
}
