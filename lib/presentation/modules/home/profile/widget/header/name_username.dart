import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/common/enums/button_type_enum.dart';

class NameAndUsername extends StatelessWidget {
  const NameAndUsername({
    super.key,
    required this.fullName,
    required this.userName,
  });

  final String fullName;

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            fullName,
            style: getBoldStyle(fontSize: 22.sp),
            textDirection: TextDirection.ltr,
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
          FittedBox(
            child: Text(
              "@$userName",
              style: getRegularStyle(
                color: ColorsManager.tealPrimary500,
                fontSize: 14.sp,
              ),
              textDirection: TextDirection.ltr,
            ),
          ),
          VerticalSpace(15.h),
          SizedBox(
            width: constraints.maxWidth * 0.35,
            height: 30.h,
            child: AppButton.dark(
              text: AppStrings.editProfile.tr(),
              svgIconPath: AssetsProvider.edit,
              matchFontColor: true,
              fontSize: 12.sp,
              iconSize: 18.sp,
              radius: 10,
              buttonType: ButtonContentType.iconText,
              onPressed: () {},
            ),
          ),
        ],
      );
    }));
  }
}
