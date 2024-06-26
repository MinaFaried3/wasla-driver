import 'package:wasla_driver/app/shared/common/common_libs.dart';

class AuthNow extends StatelessWidget {
  final String caption;
  final String buttonName;
  final String routeName;

  const AuthNow(
      {super.key,
      required this.caption,
      required this.buttonName,
      required this.routeName});

  factory AuthNow.register({
    String caption = AppStrings.doNotHaveAccount,
    String buttonName = AppStrings.createAccount,
    String? routeName,
  }) =>
      AuthNow(
        caption: caption.tr(),
        buttonName: buttonName.tr(),
        routeName: routeName ?? Routes.registerRoute.path,
      );

  factory AuthNow.login({
    String caption = AppStrings.haveAccount,
    String buttonName = AppStrings.loginNow,
    String? routeName,
  }) =>
      AuthNow(
        caption: caption.tr(),
        buttonName: buttonName.tr(),
        routeName: routeName ?? Routes.loginRoute.path,
      );

  @override
  Widget build(BuildContext context) {
    final responsive = ContextManager(context, hasAppBar: false);
    return Padding(
      padding: EdgeInsets.only(
          top: responsive.getScreenHeightPercentage(AppSize.s3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //todo RichText(text: text)
          Flexible(
            child: FittedBox(
              child: Text(
                caption,
                style: getExtraLightStyle(
                  color: ColorsManager.offWhite400,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          Flexible(
            child: FittedBox(
              child: TextButton(
                style: ButtonStyle(
                    textStyle: MaterialStatePropertyAll(
                        getRegularStyle(fontSize: 22.sp))),
                onPressed: () {
                  _onPressed(context);
                },
                child: Text(
                  buttonName,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onPressed(BuildContext context) {
    if (routeName == Routes.registerRoute.path) {
      context.pushNamed(routeName);
    } else {
      context.pop();
    }
  }
}
