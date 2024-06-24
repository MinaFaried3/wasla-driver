import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/start_trip/from_to/chart.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/start_trip/from_to/inputs_field.dart';

class FromToInputsSection extends StatelessWidget {
  const FromToInputsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPadding.leftRight,
      child: Column(
        children: [
          FromToChart(),
          FromToInputsFields(),
        ],
      ),
    );
  }
}
