import 'package:fluttertoast/fluttertoast.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';

void showAppToast(String message) => Fluttertoast.showToast(
      msg: message,
      backgroundColor: ColorsManager.tealPrimary,
      toastLength: Toast.LENGTH_LONG,
      fontSize: 16.sp,
      textColor: ColorsManager.offWhite,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
    );
