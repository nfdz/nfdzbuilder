import 'package:meta/meta.dart';
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
    return theme.injectTheme(_stylesheet);
  }
}
