import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/currentTrip/from_to/inputs_field.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/start_trip/from_to/chart.dart';

class FromToInputsSectionCurrentTrip extends StatelessWidget {
  const FromToInputsSectionCurrentTrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPadding.leftRight,
      child: Column(
        children: [
          FromToChart(),
          FromToInputsFieldsCurrentTrip(),
        ],
      ),
    );
  }
}
