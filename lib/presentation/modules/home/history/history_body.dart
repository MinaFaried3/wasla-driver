import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/history_body_content.dart';

class TripsHistoryBody extends StatelessWidget {
  const TripsHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProvidersManager.tripsHistoryProviders,
      child: const HistoryBodyContent(),
    );
  }
}
