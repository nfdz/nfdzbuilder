import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';

class WebTheme {
  final String accentColorHex;

  const WebTheme({@required this.accentColorHex});

  factory WebTheme.light() {
    return kDefaultLightTheme;
  }
}