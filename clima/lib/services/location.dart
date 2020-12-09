import 'package:geolocator/geolocator.dart';
import 'package:location_permissions/location_permissions.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      PermissionStatus permission =
          await LocationPermissions().requestPermissions();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
