import 'package:meta/meta.dart';
import 'package:web_builder/foundation/web/web_theme.dart';

class WebContext {
  List<String> scriptsPaths;
  List<String> stylesPaths;
  WebTheme theme;
  String localeCode;

  WebContext({
    @required this.scriptsPaths,
    @required this.stylesPaths,
    @required this.theme,
    @required this.localeCode,
  });
}
