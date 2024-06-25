enum TripStatus { preparing, OnRoad, Waiting, Arrived, TakeBreak }

String getStringTripStatus(num i) {
  return TripStatus.values[i.toInt()].name;
}
