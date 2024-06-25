import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/models/trip_history_data_item.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/divider_chart/divider_chart.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/from_to/from_to_section.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/wasla_provider_image.dart';
import 'package:wasla_driver/presentation/widgets/section/section_decoration.dart';

class TripHistoryItem extends StatefulWidget {
  const TripHistoryItem({
    super.key,
    required this.tripModel,
  });

  final TripHistoryItemModel tripModel;

  @override
  State<TripHistoryItem> createState() => _TripHistoryItemState();
}

class _TripHistoryItemState extends State<TripHistoryItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: DurationManager.m750);
    slideAnimation = Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    ));

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: Container(
        width: double.infinity,
        decoration: buildSectionDecoration(),
        child: Column(
          children: [
            const WaslaProviderImage(),

            //to from
            TripFromToSection(
              startCity: widget.tripModel.startStationName,
              endCity: widget.tripModel.endStationName,
              startTime: widget.tripModel.startTime,
              endTime: widget.tripModel.endTime,
              date: widget.tripModel.startDate,
            ),

            //chart
            const TripDividerChart(),

//footer
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 80),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppSvg(
                    path: Assets.svgStatusIcon,
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      widget.tripModel.tripStatus,
                      style: getBoldStyle(color: ColorsManager.tealPrimary500),
                    ),
                  ),
                  AppSvg(
                    path: Assets.svgStatusIcon,
                    height: 32,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
