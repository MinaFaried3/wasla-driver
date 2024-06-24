import 'package:wasla_driver/app/local_cubit.dart';
import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/start/widgets/start_swipe_stack_body.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().getPublicDriverModelFromLocalDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //todo overlay
      body: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          return state.maybeWhen(getLocalLoading: () {
            return const LoadingIndicator();
          }, getLocalPublicDriverModelSuccess: (driver) {
            return StartSwipeStackBody(
                passengerName: driver.firstName.orEmpty());
          }, orElse: () {
            return const StartSwipeStackBody(
                passengerName: AppConstants.emptyString);
          });
        },
      ),
    );
  }
}
