import 'dart:ui';

import 'package:flutter/services.dart';

import 'common/common_libs.dart';

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

String? validateNotEmpty(String? name) {
  if (name == null || name.isEmpty) {
    return AppStrings.cannotBeEmpty.tr();
  }
  return null;
}

String formatDateToServer(DateTime dateTime) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(dateTime);
}

String getFormattedTimeFromString(String dateTimeString) {
  // Parse the input date time string
  DateTime dateTime = DateTime.parse(dateTimeString);

  // Define the time format (e.g., '10:00 am')
  DateFormat timeFormatter = DateFormat.jm();

  // Format the time
  String formattedTime = timeFormatter.format(dateTime);

  return formattedTime;
}

String getFormattedDateFromString(String dateTimeString) {
  // Parse the input date time string
  DateTime dateTime = DateTime.parse(dateTimeString);

  // Define the date format (e.g., 'Nov 12, Wednesday')
  DateFormat dateFormatter = DateFormat('MMM d, EEEE');

  // Format the date
  String formattedDate = dateFormatter.format(dateTime);

  return formattedDate;
}

String reformatDate(String inputDate) {
  // Split the input date by '/'
  List<String> parts = inputDate.split('/');

  // Rearrange the parts to yyyy-MM-dd format
  String reformattedDate = '${parts[2]}-${parts[0]}-${parts[1]}';
  PrintManager.print(reformattedDate, color: ConsoleColor.brightCyanBg);
  return reformattedDate;
}

String cleanDate(String inputDate) {
  // Use a regular expression to remove non-ASCII characters
  String cleanedDate = inputDate.replaceAll(RegExp(r'[^\x00-\x7F]'), '');

  return cleanedDate;
}
