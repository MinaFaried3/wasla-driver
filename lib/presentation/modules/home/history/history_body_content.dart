import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/history/cubit/trips_history_cubit.dart';
import 'package:wasla_driver/presentation/modules/home/history/models/trip_history_data_item.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/date_filter/date_filter.dart';
import 'package:wasla_driver/presentation/modules/home/history/widgets/trip_history_item.dart';
import 'package:wasla_driver/presentation/widgets/retry.dart';

class HistoryBodyContent extends StatefulWidget {
  const HistoryBodyContent({super.key});

  @override
  State<HistoryBodyContent> createState() => _HistoryBodyContentState();
}

class _HistoryBodyContentState extends State<HistoryBodyContent> {
  @override
  void initState() {
    super.initState();
    context.read<TripsHistoryCubit>().getTripsHistory();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: DateFilter(),
        ),
        SliverPadding(
          padding: AppPadding.leftRight,
          sliver: BlocBuilder<TripsHistoryCubit, TripsHistoryState>(
            builder: (context, state) {
              return state.maybeWhen(
                  loading: () => centerSliver(const LoadingIndicator()),
                  getTripsHistorySuccess: (trips) => SliverList.separated(
                        itemBuilder: (context, index) => TripHistoryItem(
                          tripModel: TripHistoryItemModel.fromTripHistoryModel(
                            trip: trips[index],
                          ),
                        ),
                        separatorBuilder: separatorBuilder,
                        itemCount: trips.length,
                      ),
                  getTripsHistoryByDateSuccess: (trips) => SliverList.separated(
                        itemBuilder: (context, index) => TripHistoryItem(
                          tripModel:
                              TripHistoryItemModel.fromTripHistoryByDateModel(
                                  trip: trips[index]),
                        ),
                        separatorBuilder: separatorBuilder,
                        itemCount: trips.length,
                      ),
                  getTripsHistoryFailure: (message) => centerSliver(Retry(
                      onPressed: () =>
                          context.read<TripsHistoryCubit>().getTripsHistory(),
                      text: message)),
                  orElse: () => const SliverToBoxAdapter());
            },
          ),
        ),
        const SliverToBoxAdapter(child: VerticalSpace(100)),
      ],
    );
  }

  Widget separatorBuilder(BuildContext context, int index) =>
      const VerticalSpace(10);
  Widget centerSliver(Widget child) =>
      SliverFillRemaining(hasScrollBody: false, child: child);
}
