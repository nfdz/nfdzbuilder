import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web.dart';

class WebSite {
  final Map<String, WebPage> routes;
  final WebTheme theme;
  final List<WebCss> styles;
  final List<WebJs> scripts;
  final String scriptsPath;
  final String stylesPath;
  final String localeCode;

  WebSite({
    @required this.routes,
    @required this.theme,
    this.scripts = const [],
    this.styles = const [],
    this.stylesPath = kDefaultStylesPath,
    this.scriptsPath = kDefaultScriptsPath,
    this.localeCode = kDefaultLocaleCode,
  })  : assert(routes?.isNotEmpty == true),
        assert(theme != null);

  Map<String, String> build() {
    final Map<String, String> websiteMap = {};
    final Map<String, String> scriptsMap = _buildScripts();
    final Map<String, String> stylesMap = _buildStyles();
    websiteMap.addAll(scriptsMap);
    websiteMap.addAll(stylesMap);
    final context = WebContext(
      scriptsPaths: scriptsMap.keys.toList(),
      stylesPaths: stylesMap.keys.toList(),
      theme: theme,
      localeCode: localeCode,
    );
    routes?.entries?.forEach((pageEntry) =>
        websiteMap[pageEntry.key] = pageEntry.value.build(context));
    return websiteMap;
  }

  Map<String, String> _buildScripts() {
    final Map<String, String> scriptsMap = {};
    scripts?.forEach((script) =>
        scriptsMap['$scriptsPath${script.name}.js'] = script.script);
    return scriptsMap;
  }

  Map<String, String> _buildStyles() {
    final Map<String, String> stylesMap = {};
    styles?.forEach((style) =>
        stylesMap['$stylesPath${style.name}.css'] = style.getStylesheet(theme));
    return stylesMap;
  }
}
