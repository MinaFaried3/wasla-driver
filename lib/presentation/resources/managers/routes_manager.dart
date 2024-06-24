import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/home/home_view.dart';
import 'package:wasla_driver/presentation/modules/login/login_view.dart';
import 'package:wasla_driver/presentation/modules/register/register_view.dart';
import 'package:wasla_driver/presentation/modules/start/start_view.dart';
import 'package:wasla_driver/presentation/modules/start_now/start_now_screen.dart';

class RoutesStrings {
  static const String startNowRoute = '/start_now';
  static const String onboardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgot_password';
  static const String resetPasswordRoute = '/reset_password';
  static const String verificationWayRoute = '/verification_way';
  static const String editPhoneRoute = '/edit_phone';
  static const String editEmailRoute = '/edit_email';
  static const String verifyPhoneRoute = '/verify_phone';
  static const String verifyEmailRoute = '/verify_email';
  static const String startRoute = '/start';
  static const String home = '/';
  static const String unDefinedRoute = '/un_defined';
  static const String testRoute = '/test';
}

enum Routes {
  startNowRoute(RoutesStrings.startNowRoute),
  loginRoute(RoutesStrings.loginRoute),
  registerRoute(RoutesStrings.registerRoute),
  forgotPasswordRoute(RoutesStrings.forgotPasswordRoute),
  resetPasswordRoute(RoutesStrings.resetPasswordRoute),
  verificationWayRoute(RoutesStrings.verificationWayRoute),
  editPhoneRoute(RoutesStrings.editPhoneRoute),
  editEmailRoute(RoutesStrings.editEmailRoute),
  verifyPhoneRoute(RoutesStrings.verifyPhoneRoute),
  verifyEmailRoute(RoutesStrings.verifyEmailRoute),
  start(RoutesStrings.startRoute),
  testRoute(RoutesStrings.testRoute),
  home(RoutesStrings.home),
  unDefined(RoutesStrings.unDefinedRoute);

  final String path;

  const Routes(this.path);
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    Routes currentRoute = Routes.values.firstWhere(
      (element) => element.path == settings.name,
      orElse: () => Routes.unDefined,
    );

    final args = settings.arguments;

    switch (currentRoute) {
      case Routes.startNowRoute:
        return MaterialPageRoute(builder: (context) => const StartNowScreen());

      case Routes.unDefined:
        return unDefinedRoute();
      case Routes.loginRoute:
        DIModulesManger.prepareLoginModule();
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: BlocProvidersManager.loginProviders,
                  child: const LoginScreen(),
                ));
      case Routes.registerRoute:
        DIModulesManger.prepareRegisterModule();
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: BlocProvidersManager.registerProviders,
                  child: const RegisterScreen(),
                ));

      case Routes.forgotPasswordRoute:
        return unDefinedRoute();
      case Routes.resetPasswordRoute:
        return unDefinedRoute();
      case Routes.verificationWayRoute:
        return unDefinedRoute();
      case Routes.editPhoneRoute:
        return unDefinedRoute();
      case Routes.editEmailRoute:
        return unDefinedRoute();
      case Routes.verifyPhoneRoute:
        return unDefinedRoute();
      case Routes.verifyEmailRoute:
        return unDefinedRoute();
      case Routes.start:
        return MaterialPageRoute(builder: (context) => const StartScreen());
      case Routes.testRoute:
        return unDefinedRoute();
      case Routes.home:
        DIModulesManger.prepareHomeModule();
        DIModulesManger.prepareProfileModule();
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: BlocProvidersManager.homeProviders,
                  child: const HomeScreen(),
                ));
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRoute),
              ),
            ));
  }

  static MaterialPageRoute buildRoute({
    required VoidCallback prepareModule,
    required List<BlocProvider> Function() providers,
    required Widget screen,
  }) {
    prepareModule();
    return MaterialPageRoute(
      builder: (_) => MultiBlocProvider(
        providers: providers(),
        child: screen,
      ),
    );
  }
}
