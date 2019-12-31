import 'dart:collection';

import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web_context.dart';
import 'package:web_builder/foundation/web/web_css.dart';
import 'package:web_builder/foundation/web/web_js.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/web/web_theme.dart';

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
    final Map<String, String> websiteMap = LinkedHashMap<String, String>();
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
    final Map<String, String> scriptsMap = LinkedHashMap<String, String>();
    scripts?.forEach(
        (script) => scriptsMap['$scriptsPath${script.name}'] = script.script);
    return scriptsMap;
  }

  Map<String, String> _buildStyles() {
    final Map<String, String> stylesMap = LinkedHashMap<String, String>();
    styles?.forEach((style) =>
        stylesMap['$stylesPath${style.name}'] = style.getStylesheet(theme));
    return stylesMap;
  }
}
