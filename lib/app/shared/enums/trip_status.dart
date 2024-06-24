enum TripStatus { preparing, OnRoad, Waiting, Arrived, TakeBreak }

extension GetStatus on TripStatus {
  String getStringTripStatus(num i) {
    return TripStatus.values[i.toInt()].name;
  }
}
