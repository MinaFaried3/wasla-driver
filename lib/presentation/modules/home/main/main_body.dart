import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/main/cubit/current_trip_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/currentTrip/current_trip.dart';
import 'package:wasla_driver/presentation/modules/home/main/widget/start_trip/start_trip.dart';
import 'package:wasla_driver/presentation/widgets/retry.dart';
import 'package:wasla_driver/presentation/widgets/section/list_section.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  void initState() {
    super.initState();
    context.read<CurrentTripCubit>().getCurrentTrip();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.all,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<CurrentTripCubit, CurrentTripState>(
              builder: (context, state) {
                return state.maybeWhen(
                    loading: () => const LoadingIndicator(),
                    getCurrentTripError: (message) => Retry(
                        onPressed: () {
                          context.read<CurrentTripCubit>().getCurrentTrip();
                        },
                        text: message),
                    getCurrentTripSuccess: (currentTrip) {
                      if (currentTrip == null) {
                        return const StartTripContent();
                      } else {
                        return Column(
                          children: [
                            const CurrentTripContent(),
                            const VerticalSpace(30),
                            ListSection(
                                tripId: currentTrip.id.toString(),
                                tittle: 'طلبات الحجز',
                                list:
                                    currentTrip.reservations!.reversed.toList())
                          ],
                        );
                      }
                    },
                    orElse: () => SizedBox());
              },
            )
          ],
        ),
      ),
    );
  }
}
