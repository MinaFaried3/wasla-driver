import 'package:wasla_driver/app/shared/common/common_libs.dart';
import 'package:wasla_driver/presentation/modules/home/current_trip/current_trip_body.dart';
import 'package:wasla_driver/presentation/modules/home/history/history_body.dart';
import 'package:wasla_driver/presentation/modules/home/home/model/home_content_item.dart';
import 'package:wasla_driver/presentation/modules/home/location/location_body.dart';
import 'package:wasla_driver/presentation/modules/home/main/main_body.dart';
import 'package:wasla_driver/presentation/modules/home/profile/profile.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(const HomeState.initial(HomeContentItem(
          title: AppStrings.myTrips,
          body: TripsHistoryBody(),
          // title: AppStrings.main,
          // body: MainBody(),
        ))) {
    homeContentItems = [
      _mainContent,
      _locationContent,
      _currentTripContent,
      _tripsHistoryContent,
      _profileContent,
    ];
  }

  final HomeContentItem _mainContent = const HomeContentItem(
    title: AppStrings.main,
    body: MainBody(),
  );
  final HomeContentItem _locationContent = const HomeContentItem(
    title: AppStrings.location,
    body: LocationBody(),
  );
  final HomeContentItem _currentTripContent = const HomeContentItem(
    title: AppStrings.currentTrip,
    body: CurrentTripBody(),
  );
  final HomeContentItem _tripsHistoryContent = const HomeContentItem(
    title: AppStrings.myTrips,
    body: TripsHistoryBody(),
  );
  final HomeContentItem _profileContent = const HomeContentItem(
    title: AppStrings.profile,
    body: ProfileBody(),
  );
  late List<HomeContentItem> homeContentItems;

  void changeBodyContent(int idx) {
    emit(HomeState.changeBodyContent(homeContentItems[idx].copyWith()));
  }
}
