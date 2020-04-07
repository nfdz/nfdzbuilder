import 'package:meta/meta.dart';
import 'package:web_builder/foundation/web/web_theme.dart';

// TODO: Use an asset file instead a String variable
class WebCss {
  final String name;
  final String _stylesheet;

  /// Warning: Hardcoded [stylesheet] should not contain special characters.
  /// Remember to escape \ and $ characters.
  WebCss({
    @required this.name,
    @required String stylesheet,
  })  : assert(name?.isNotEmpty == true),
        assert(stylesheet?.isNotEmpty == true),
        this._stylesheet = stylesheet;

  String getStylesheet(WebTheme theme) {
    return theme.injectTheme(_stylesheet);
  }
}
