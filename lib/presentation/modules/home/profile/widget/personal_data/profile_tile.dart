import 'package:wasla_driver/app/shared/common/common_libs.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    required this.iconPath,
    required this.tittle,
    this.iconSize,
    this.fontSize,
    this.iconColor,
  });

  final String iconPath;
  final String tittle;
  final double? iconSize;
  final double? fontSize;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.0.sp),
      child: Row(
        children: [
          AppSvg(
            path: iconPath,
            color: iconColor ?? ColorsManager.tealPrimary800,
            height: iconSize ?? 28.sp,
          ),
          const HorizontalSpace(10),
          Flexible(
            child: SelectableText(
              tittle,
              style: getLightStyle(
                  fontSize: fontSize ?? 16.sp,
                  color: ColorsManager.offWhite500),
              // overflow: TextOverflow.fade,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
