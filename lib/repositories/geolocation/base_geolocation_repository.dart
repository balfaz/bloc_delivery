import 'package:geolocator/geolocator.dart';

abstract class BaseGeolocationRepostory {
  Future<Position?> getCurrentLocation() async {}
}
