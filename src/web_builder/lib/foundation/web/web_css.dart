import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web_theme.dart';

class WebCss {
  final String name;
  final String _stylesheet;
  WebCss({
    @required this.name,
    @required String stylesheet,
  })  : assert(name?.isNotEmpty == true),
        assert(stylesheet?.isNotEmpty == true),
        this._stylesheet = stylesheet;

  String getStylesheet(WebTheme theme) {
    String stylesheetBld = _stylesheet.replaceAll(
        kAccentColorHexPlaceholder, theme.accentColorHex);
    return stylesheetBld;
  }
}
