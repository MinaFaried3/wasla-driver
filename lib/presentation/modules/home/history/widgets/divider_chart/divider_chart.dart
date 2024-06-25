import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/divider_chart/chart_boundaries.dart';
import 'package:wasla_driver/presentation/widgets/to_from_chart.dart';

class TripDividerChart extends StatelessWidget {
  const TripDividerChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ContextManager contextManager = ContextManager(context);
    return Row(
      children: [
        ChartBoundaries(isLeft: contextManager.isEnglish ? true : false),
        const Expanded(
          child: DottedLine(),
        ),
        ChartBoundaries(isLeft: contextManager.isEnglish ? false : true),
      ],
    );
  }
}
