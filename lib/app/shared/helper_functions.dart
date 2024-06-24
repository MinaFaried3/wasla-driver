import 'dart:ui';

import 'package:flutter/services.dart';

import 'common/common_libs.dart';
import 'package:intl/intl.dart';

void tryCatch({
  required VoidCallback methodToExecute,
  required String errorMessage,
}) {
  try {
    methodToExecute.call();
  } catch (error) {
    PrintManager.print(error, color: ConsoleColor.redBg);
  }
}

Future<Uint8List> getImageFromRawData(
    {required String imgPath, double? width, double? height}) async {
  ByteData imageByteData = await rootBundle.load(imgPath);

  Uint8List imageList = imageByteData.buffer.asUint8List();
  Codec imageCodec = await instantiateImageCodec(
    imageList,
    targetWidth: width?.round(),
    targetHeight: height?.round(),
  );

  FrameInfo imageFrameInfo = await imageCodec.getNextFrame();

  ByteData? finalImageByteData =
      await imageFrameInfo.image.toByteData(format: ImageByteFormat.png);
  Uint8List finalImageList = finalImageByteData!.buffer.asUint8List();

  return finalImageList;
}
String formatDateTimeForServer(DateTime dateTime) {
  final DateFormat formatter = DateFormat("yyyy-MM-ddTHH:mm:ss.SSS'Z'");
  PrintManager.print(formatter.format(dateTime.toUtc()));
  return formatter.format(dateTime.toUtc());
}

String formatDateTimeForUx(DateTime? dateTime) {
  if (dateTime == null) return '';
  final DateFormat dateFormatter = DateFormat.yMMMMd().add_jm();

  return dateFormatter.format(dateTime);
}

String formatDate(String dateTimeString) {
  // Parse the input date time string
  DateTime dateTime = DateTime.parse(dateTimeString);

  // Define the date format
  DateFormat formatter = DateFormat.yMMMMd().add_jm();

  // Format the date time
  String formattedDate = formatter.format(dateTime);

  return formattedDate;
}