import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/app/shared/helper_functions.dart';
import 'package:wasla_driver/models/TripHistoryByDateResponse.dart';
import 'package:wasla_driver/models/TripHistoryResponse.dart';

part 'trips_history_cubit.freezed.dart';
part 'trips_history_state.dart';

class TripsHistoryCubit extends Cubit<TripsHistoryState> {
  TripsHistoryCubit() : super(const TripsHistoryState.initial());
  final PublicDriverRepository repository = getIt<PublicDriverRepository>();
  bool filterByDate = false;
  DateTime filteredDate = DateTime.now();
  DateTime? oldestDate;

  void getTripsHistory() {
    emit(const TripsHistoryState.loading());
    if (filterByDate) {
      _getTripsHistoryByDate();
    } else {
      _getTripsHistory();
    }
  }

  void _getTripsHistory() async {
    final result = await repository.getTripsHistory();
    result.fold(
        (l) =>
            emit(TripsHistoryState.getTripsHistoryFailure(message: l.message)),
        (r) {
      for (var trip in r) {
        if (trip.startDate == "0001-01-01T00:00:00") continue;
        var tripDate = DateTime.parse(trip.startDate.orEmpty());
        oldestDate ??= DateTime.parse(trip.startDate.orEmpty());

        oldestDate = tripDate.isBefore(oldestDate!) ? tripDate : oldestDate;
      }
      emit(TripsHistoryState.getTripsHistorySuccess(trips: r));
    });
  }

  void _getTripsHistoryByDate() async {
    final result = await repository.getTripsHistoryByDate(
        date: formatDateToServer(filteredDate));
    result.fold(
        (l) =>
            emit(TripsHistoryState.getTripsHistoryFailure(message: l.message)),
        (r) => emit(TripsHistoryState.getTripsHistoryByDateSuccess(trips: r)));
  }
}
