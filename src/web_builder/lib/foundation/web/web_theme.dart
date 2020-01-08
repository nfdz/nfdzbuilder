import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';

class WebTheme {
  final String accentColorHex;

  const WebTheme({@required this.accentColorHex});

  factory WebTheme.light() {
    return kDefaultLightTheme;
  }

  WebTheme copyWith({String accentColorHex}) {
    return WebTheme(
      accentColorHex: accentColorHex != null ? accentColorHex : this.accentColorHex,
    );
  }

  String injectTheme(String input) {
    String outputBld = input.replaceAll(kAccentColorHexPlaceholder, accentColorHex);
    return outputBld;
  }
}
