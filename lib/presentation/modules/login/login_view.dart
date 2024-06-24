import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/presentation/modules/login/widgets/login_form.dart';
import 'package:wasla_driver/presentation/widgets/auth/components/auth_now.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Image.asset(Assets.pngAuthImage),
              ),
              const LoginForm(),
              VerticalSpace(100.h),
              AuthNow.register()
            ],
          ),
        ),
      ),
    );
  }
}
