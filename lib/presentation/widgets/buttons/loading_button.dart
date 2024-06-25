import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/common/enums/button_type_enum.dart';
import 'package:wasla_driver/presentation/widgets/buttons/outlined_button.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    super.key,
    this.text,
    this.onPressed,
    this.isLoading = false,
    this.buttonStyle = AppButtonStyle.solidBackground,
    this.width,
    this.height,
    this.fontSize,
    this.iconSize,
    this.radius,
    this.buttonType = ButtonContentType.text,
    this.svgIconPath,
    this.backgroundColor,
    this.fontColor,
    this.iconColor,
    this.matchFontColor = false,
  });

  factory LoadingButton.loading() => const LoadingButton(
        isLoading: true,
      );

  final double? width;
  final double? height;
  final double? fontSize;
  final double? iconSize;
  final double? radius;
  final ButtonContentType buttonType;
  final String? svgIconPath;
  final Color? backgroundColor;
  final Color? fontColor;
  final Color? iconColor;
  final bool matchFontColor;
  final String? text;
  final void Function()? onPressed;
  final bool isLoading;
  final AppButtonStyle buttonStyle;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(seconds: 1),
      transitionBuilder: (child, animation) => SizeTransition(
        sizeFactor: animation,
        axis: Axis.horizontal,
        child: child,
      ),
      child: isLoading
          ? LoadingIndicator(
              width: 150.w,
            )
          : _buildButton(),
    );
  }

  Widget _buildButton() {
    switch (buttonStyle) {
      case AppButtonStyle.solidBackground:
        return AppButton(
          onPressed: onPressed ?? () {},
          text: text ?? AppConstants.emptyString,
          iconSize: iconSize,
          matchFontColor: matchFontColor,
          svgIconPath: svgIconPath,
          buttonType: buttonType,
          width: width,
          height: height,
          radius: radius,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontColor: fontColor,
          iconColor: iconColor,
        );
      case AppButtonStyle.outlined:
        return AppOutlinedButton(
          onPressed: onPressed ?? () {},
          text: text ?? AppConstants.emptyString,
          svgIconPath: svgIconPath,
          buttonType: buttonType,
          width: width,
          height: height,
          radius: radius,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontColor: fontColor,
        );
    }
  }
}
