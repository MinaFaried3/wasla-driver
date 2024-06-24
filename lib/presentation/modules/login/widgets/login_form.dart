import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/enums/roles.dart';
import 'package:wasla_driver/data/requests/LoginRequest.dart';
import 'package:wasla_driver/presentation/common/cubits/password_icon_cubit/password_icon_cubit.dart';
import 'package:wasla_driver/presentation/modules/login/cubit/login_cubit.dart';
import 'package:wasla_driver/presentation/widgets/app_toast.dart';
import 'package:wasla_driver/presentation/widgets/buttons/loading_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _sizedAnimation;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPublicDriver = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _addFocusNodesListeners();
    _initAnimation();
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  void _initAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: DurationManager.m750);

    _sizedAnimation = Tween<double>(
            begin: AppConstants.doubleZero, end: AppConstants.doubleOne)
        .animate(
            CurvedAnimation(parent: _animationController, curve: Curves.ease));

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = ContextManager(context, hasAppBar: false);
    const double containerPadding = AppPadding.p8;
    const double containerRadius = containerPadding + AppSize.s20;
    const double paddingBottom = AppPadding.p20;
    return Form(
      key: formKey,
      child: Container(
        padding: const EdgeInsets.all(containerPadding),
        margin: const EdgeInsets.symmetric(horizontal: AppPadding.fromLR),
        decoration: BoxDecoration(
            color: ColorsManager.darkTeal,
            borderRadius: BorderRadius.circular(containerRadius)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //user name field
            Padding(
              padding: const EdgeInsets.only(bottom: paddingBottom),
              child: AppTextFormField(
                labelText:
                    '${AppStrings.username.tr()}-${AppStrings.email1.tr()}',
                svgPrefixPath: AssetsProvider.emailIcon,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                textDirection: TextDirection.ltr,
                controller: usernameController,
                autofillHints: const [AutofillHints.email],
              ),
            ),

            //password field
            BlocBuilder<PasswordIconCubit, PasswordIconState>(
              builder: (context, state) {
                return AppTextFormField(
                  textDirection: TextDirection.ltr,
                  controller: passwordController,
                  textInputAction: TextInputAction.done,
                  labelText: AppStrings.password.tr(),
                  svgPrefixPath: AssetsProvider.passwordIcon,
                  isPassword: state.isClosed,
                  suffix: FadeTransition(
                    opacity: _sizedAnimation,
                    child: _closedOpenIcon(
                        iconPath: state.iconPath,
                        width: responsive.getWidthOf(AppSize.s0_1)),
                  ),
                );
              },
            ),

            //forget password Text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Checkbox(
                      value: isPublicDriver,
                      onChanged: (val) {
                        setState(() {
                          isPublicDriver = val ?? false;
                        });
                      }),
                  Text(
                    AppStrings.isPublicDriver.tr(),
                    style: getMediumStyle(fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            //login button
            //TODO
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                state.whenOrNull(
                    loginPublicDriverSuccess: (driver) {
                      showAppToast(
                          '${AppStrings.welcomeWith.tr()} ${driver.firstName}');
                      context.pushReplacementNamed(Routes.start.path);
                    },
                    loginFailure: (message) => showAppToast(message));
              },
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => LoadingButton.loading(),
                    orElse: () => LoadingButton(
                        text: AppStrings.login.tr(),
                        onPressed: _onPressedLogin));
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _closedOpenIcon({required String iconPath, required double width}) {
    return IconButton(
      icon: SvgPicture.asset(
        iconPath,
        width: width,
        colorFilter: ColorFilter.mode(
          ColorsManager.offWhite300.withOpacity(AppSize.s0_9),
          BlendMode.srcIn,
        ),
      ),
      onPressed: () {
        _animationController.reset();
        _animationController.forward();

        context.read<PasswordIconCubit>().toggleOpenCloseIcon();
      },
    );
  }

  void _onPressedLogin() async {
    // passwordFocusNode.unfocus();
    // usernameFocusNode.unfocus();
    // await _addDelay();
    formKey.currentState!.validate();
    if (context.mounted) {
      context.read<LoginCubit>().login(
              loginRequestBody: LoginRequestBody(
            userName: usernameController.text,
            password: passwordController.text,
            role: isPublicDriver ? Role.publicDriver.role : Role.ordDriver.role,
          ));
    }
  }

  // Future<void> _addDelay() async {
  //   if ((usernameController.text.isEmpty || passwordController.text.isEmpty) &&
  //       widget.riveController.currentState == BearState.handsUp) {
  //     await Future.delayed(DurationManager.bearHandsDownDuration);
  //   }
  // }

  void _dispose() {
    //animation
    _animationController.dispose();

    //remove listener
    // passwordFocusNode.removeListener(_passwordFocusNodeListener);
    // usernameFocusNode.removeListener(_usernameFocusNodeListener);
    // //dispose nodes
    // passwordFocusNode.dispose();
    // usernameFocusNode.dispose();
    //dispose controllers
    usernameController.dispose();
    passwordController.dispose();
  }

  // void _addFocusNodesListeners() {
  //   passwordFocusNode.addListener(_passwordFocusNodeListener);
  //   usernameFocusNode.addListener(_usernameFocusNodeListener);
  // }

  // void _passwordFocusNodeListener() {
  //   if (passwordFocusNode.hasFocus) {
  //     widget.riveController.addState(BearState.handsUp);
  //   } else if (!passwordFocusNode.hasFocus) {
  //     widget.riveController.addState(BearState.handsDown);
  //   }
  // }

  // void _usernameFocusNodeListener() {
  //   if (usernameFocusNode.hasFocus) {
  //     context.read<BearDialogCubit>().usernameFieldFocusedMsg();
  //   }
  // }
}
