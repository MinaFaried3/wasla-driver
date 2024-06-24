import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wasla_driver/app/services/validator/string_validator.dart';
import 'package:wasla_driver/app/services/validator/validator_input_formatter.dart';
import 'package:wasla_driver/app/services/validator/validator_manager.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/data/requests/register_request.dart';
import 'package:wasla_driver/generated/app_image.dart';
import 'package:wasla_driver/presentation/common/cubits/password_icon_cubit/password_icon_cubit.dart';
import 'package:wasla_driver/presentation/modules/register/bloc/check_username_bloc.dart';
import 'package:wasla_driver/presentation/modules/register/cubit/register_cubit.dart';
import 'package:wasla_driver/presentation/widgets/app_toast.dart';
import 'package:wasla_driver/presentation/widgets/buttons/loading_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _scaleAnimation;
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController licenseNumController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ImagePicker picker = ImagePicker();
  XFile? profileImageXFile;
  XFile? licensesImageXFile;
  File? profileImage;
  File? licensesImage;

  void _init() {
    _initAnimation();
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const autoFill = [
      AutofillHints.name,
      AutofillHints.namePrefix,
      AutofillHints.nameSuffix
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.all,
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    ///image and
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Expanded(
                            child: GestureDetector(
                          onTap: () async {
                            profileImageXFile = await picker.pickImage(
                                source: ImageSource.gallery);
                            if (profileImageXFile != null) {
                              profileImage = File(profileImageXFile!.path);
                              setState(() {});
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: profileImage != null
                                    ? Image.file(profileImage!)
                                    : Image.asset(
                                        Assets.pngUploadProfileImage)),
                          ),
                        )),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, right: 15, left: 15),
                              child: Image.asset(Assets.pngAuthImage),
                            )),
                      ],
                    ),

                    ///first name
                    Row(
                      textDirection: TextDirection.ltr,
                      children: [
                        Expanded(
                          child: AppTextFormField(
                            controller: firstnameController,
                            labelText: AppStrings.firstname.tr(),
                            svgPrefixPath: AssetsProvider.userIcon,
                            textInputAction: TextInputAction.next,
                            textDirection: TextDirection.ltr,
                            autofillHints: autoFill,
                            textCapitalization: TextCapitalization.words,
                            validator: _validateNotEmpty,
                          ),
                        ),
                        const HorizontalSpace(5),

                        ///last name
                        Expanded(
                          child: AppTextFormField(
                            controller: lastnameController,
                            labelText: AppStrings.lastname.tr(),
                            svgPrefixPath: AssetsProvider.userIcon,
                            textInputAction: TextInputAction.next,
                            textDirection: TextDirection.ltr,
                            autofillHints: autoFill,
                            textCapitalization: TextCapitalization.words,
                            validator: _validateNotEmpty,
                          ),
                        ),
                      ],
                    ),
                    buildVerticalSpace(),

                    //user name
                    BlocConsumer<CheckUsernameBloc, CheckUsernameState>(
                      listener: (context, state) => _startAnimation(),
                      builder: (context, state) {
                        return AppTextFormField(
                          controller: usernameController,
                          textDirection: TextDirection.ltr,
                          textInputAction: TextInputAction.next,
                          autofillHints: const [
                            AutofillHints.username,
                            AutofillHints.newUsername
                          ],
                          inputFormatters: [LowerCaseTextFormatter()],
                          labelText: AppStrings.username.tr(),
                          svgPrefixPath: AssetsProvider.userIcon,
                          onChanged: (username) => _checkUsername(username),
                          onFieldSubmitted: (username) {
                            state.maybeWhen(
                                valid: () {},
                                orElse: () => _checkUsername(username));
                          },
                          validator: (username) {
                            return state.whenOrNull(
                              notValid: (message) => message.tr(),
                              error: (failure) => failure.message,
                            );
                          },
                          suffix: ScaleTransition(
                            scale: _scaleAnimation,
                            child: state.maybeWhen(
                              initial: () => null,
                              loading: () => _loadingIndicator(),
                              valid: () => _validIcon(),
                              orElse: () => _notValidIcon(),
                            ),
                          ),
                        );
                      },
                    ),
                    buildVerticalSpace(),
                    //.phone
                    AppTextFormField(
                      controller: phoneController,
                      textDirection: TextDirection.ltr,
                      textInputType: TextInputType.phone,
                      inputFormatters: [
                        ValidatorInputFormatter(
                          editingFormatter:
                              const PhoneNumberEditingRegexValidator(),
                        )
                      ],
                      validator: (phone) => _validateContactsForm(
                          email: emailController.text, phone: phone),
                      textInputAction: TextInputAction.next,
                      labelText: AppStrings.phone.tr(),
                      svgPrefixPath: AssetsProvider.phoneIcon,
                      autofillHints: const [AutofillHints.telephoneNumber],
                    ),

                    ///email
                    AppTextFormField(
                      controller: emailController,
                      textDirection: TextDirection.ltr,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                      labelText: AppStrings.email2.tr(),
                      svgPrefixPath: AssetsProvider.emailIcon,
                      inputFormatters: [
                        ValidatorInputFormatter(
                          editingFormatter: const EmailEditingRegexValidator(),
                        )
                      ],
                      validator: (email) => _validateContactsForm(
                          email: email, phone: phoneController.text),
                      autofillHints: const [AutofillHints.email],
                    ),
                    buildVerticalSpace(),
                    //password
                    BlocBuilder<PasswordIconCubit, PasswordIconState>(
                      builder: (context, state) {
                        return AppTextFormField(
                          controller: passwordController,
                          textDirection: TextDirection.ltr,
                          textInputAction: TextInputAction.next,
                          textInputType: TextInputType.visiblePassword,
                          labelText: AppStrings.password.tr(),
                          svgPrefixPath: AssetsProvider.passwordIcon,
                          validator: _passwordValidator,
                          isPassword: state.isClosed,
                          suffix: _closedOpenIcon(
                              iconPath: state.iconPath, width: 30),
                        );
                      },
                    ),

                    buildVerticalSpace(),
                    //licenses image
                    DottedBorder(
                      color: ColorsManager.tealPrimary,
                      borderType: BorderType.RRect,
                      dashPattern: [6, 10, 2, 4],
                      strokeCap: StrokeCap.round,
                      padding: const EdgeInsets.all(5),
                      radius: const Radius.circular(20),
                      child: GestureDetector(
                        onTap: () async {
                          licensesImageXFile = await picker.pickImage(
                              source: ImageSource.gallery);
                          if (licensesImageXFile != null) {
                            licensesImage = File(licensesImageXFile!.path);
                            setState(() {});
                          }
                        },
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                              image: licensesImage != null
                                  ? DecorationImage(
                                      image: FileImage(licensesImage!))
                                  : null),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const AppSvg(
                                  path: AssetsProvider.idIcon,
                                  height: 30,
                                ),
                                const HorizontalSpace(10),
                                Text(AppStrings.licenseImage.tr())
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    buildVerticalSpace(),
                    //licenses num
                    AppTextFormField(
                      controller: licenseNumController,
                      textDirection: TextDirection.ltr,
                      textInputType: TextInputType.text,
                      validator: _validateNotEmpty,
                      textInputAction: TextInputAction.next,
                      labelText: AppStrings.licenseNum.tr(),
                      svgPrefixPath: AssetsProvider.idIcon,
                      autofillHints: const [AutofillHints.telephoneNumber],
                    ),
                    VerticalSpace(50),
                    //regiset button
                    BlocConsumer<RegisterCubit, RegisterState>(
                      listener: (context, state) {
                        state.whenOrNull(
                            registerPublicDriverSuccess: (driver) {
                              showAppToast(
                                  '${AppStrings.welcomeWith.tr()} ${driver.firstName}');
                              context.pushReplacementNamed(Routes.start.path);
                            },
                            registerPublicDriverFailure: (message) =>
                                showAppToast(message));
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => LoadingButton.loading(),
                            orElse: () => LoadingButton(
                                text: AppStrings.register.tr(),
                                onPressed: _onPressedRegister));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  VerticalSpace buildVerticalSpace() => const VerticalSpace(12);

  String? _validateNotEmpty(String? name) {
    if (name == null || name.isEmpty) {
      return AppStrings.cannotBeEmpty.tr();
    }
    return null;
  }

  void _checkUsername(String username) {
    context.read<CheckUsernameBloc>().add(CheckUsernameEvent.check(username));
  }

  SvgPicture _notValidIcon() {
    return SvgPicture.asset(
      AssetsProvider.errorIcon,
      fit: BoxFit.scaleDown,
      colorFilter: const ColorFilter.mode(
        ColorsManager.red700,
        BlendMode.srcIn,
      ),
    );
  }

  void _dispose() {
    _animationController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    licenseNumController.dispose();
  }

  void _initAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: DurationManager.m500);
    _scaleAnimation = Tween<double>(
            begin: AppConstants.doubleZero, end: AppConstants.doubleOne)
        .animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    ));
  }

  void _startAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  SvgPicture _validIcon() {
    return SvgPicture.asset(
      AssetsProvider.doneIcon,
      fit: BoxFit.scaleDown,
      colorFilter: ColorFilter.mode(
        ColorsManager.tealPrimary300.withOpacity(AppSize.s0_9),
        BlendMode.srcIn,
      ),
    );
  }

  Padding _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(AppPadding.p16),
      child: SizedBox(
        width: AppSize.s4,
        height: AppSize.s4,
        child: CircularProgressIndicator(
          strokeWidth: AppSize.s1,
        ),
      ),
    );
  }

  String? _validateContactsForm({
    required String? email,
    required String? phone,
  }) {
    String? isValidEmail = ValidatorManager.validateEmail(email);
    String? isValidPhone = ValidatorManager.validatePhone(phone);

    if (isValidEmail == null || isValidPhone == null) {
      return null;
    }
    return AppStrings.cannotBeEmpty.tr();
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
        context.read<PasswordIconCubit>().toggleOpenCloseIcon();
      },
    );
  }

  String? _passwordValidator(String? password) {
    if (password == null ||
        password.isEmpty ||
        passwordController.text.isEmpty) {
      return AppStrings.cannotBeEmpty.tr();
    }

    if (password.length < AppConstants.minPasswordLength) {
      return AppStrings.passwordLengthInvalid.tr();
    }

    final validPassword =
        const PasswordSubmitRegexValidator().isValid(password);

    if (!validPassword) {
      return AppStrings.passwordInvalid.tr();
    }

    return null;
  }

  void _onPressedRegister() {
    if (formKey.currentState!.validate()) {
      context.read<RegisterCubit>().register(
              registerRequest: RegisterRequest(
            profileImageFile: profileImage!,
            licenseImageFile: licensesImage!,
            licenseNum: licenseNumController.text,
            phoneNumber: phoneController.text,
            password: passwordController.text,
            email: emailController.text,
            firstName: firstnameController.text,
            lastName: lastnameController.text,
            userName: usernameController.text,
          ));
    }
  }
}
