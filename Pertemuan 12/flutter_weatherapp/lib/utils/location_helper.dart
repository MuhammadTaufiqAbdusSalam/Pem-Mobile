import 'package:geolocator/geolocator.dart';

Future<Position?> getCurrentLocation() async {
  try {
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );
  } catch (e) {
    print("Error getting location: $e");
    return null;
  }
}
