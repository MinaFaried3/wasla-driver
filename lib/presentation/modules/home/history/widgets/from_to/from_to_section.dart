import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/from_to/trip_point.dart';
import 'package:wasla_driver/presentation/widgets/to_from_chart.dart';

class TripFromToSection extends StatelessWidget {
  const TripFromToSection(
      {super.key,
      this.startTime = '10:00am',
      this.startCity = 'سوهاج',
      this.endTime = '10:00am',
      this.endCity = 'طما',
      this.date = 'Nov 12'});

  final String startTime;
  final String startCity;
  final String endTime;
  final String endCity;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Row(
        children: [
          TripPoint(
              tittle: AppStrings.tripStart.tr(),
              time: startCity,
              city: startTime),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DottedLineWithIconDotSection(
                size: 15.sp,
                iconPath: AssetsProvider.busIcon,
                iconSize: 30.sp,
              ),
              Text(
                date,
                style: getBoldStyle(fontSize: 8),
              )
            ],
          )),
          TripPoint(
              tittle: AppStrings.tripEnd.tr(), time: endCity, city: endTime),
        ],
      ),
    );
  }
}
