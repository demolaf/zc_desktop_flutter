import 'package:stacked/stacked.dart';
import 'package:zc_desktop_flutter/app/app.logger.dart';

class HomeViewModel extends BaseViewModel {
  final log = getLogger("HomeViewwModel");

  String _logoUrl = 'assets/images/zc_logo.png';
  double _logoWidth = 10.0;
  double _logoHeight = 10.0;
  String _title =
      'Welcome to Zuri Chat! An open source, very flexible tool built by Flutter desktop team.';

  String get logoUrl => _logoUrl;
  double get logoWidth => _logoWidth;
  double get logoHeight => _logoHeight;
  String get title => _title;
}
