import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _myFlutterAppFamily = 'MyFlutterApp';
  static const String _vacunappFamily = 'Vacunapp';

  // MyFlutterApp
  static const IconData kuser =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);
  static const IconData kcalendar1 =
      IconData(0xe897, fontFamily: _myFlutterAppFamily);
  static const IconData klogout =
      IconData(0xe898, fontFamily: _myFlutterAppFamily);
  static const IconData kchevronLeft =
      IconData(0xf053, fontFamily: _myFlutterAppFamily);
  static const IconData kchevronUp =
      IconData(0xf077, fontFamily: _myFlutterAppFamily);
  static const IconData kchevronDown =
      IconData(0xf078, fontFamily: _myFlutterAppFamily);
  static const IconData kuserInjured =
      IconData(0xf728, fontFamily: _myFlutterAppFamily);

  // Vacunapp
  static const IconData kdateRange =
      IconData(0xe801, fontFamily: _vacunappFamily);
  static const IconData khospitalAlt =
      IconData(0xf47d, fontFamily: _vacunappFamily);
}
