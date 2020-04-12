import 'dart:io';

import 'package:nfdz_website/pages/home/home_page.dart';
import 'package:nfdz_website/scripts/scripts.dart';
import 'package:web_builder/foundation/web/web.dart';
import 'package:web_builder/foundation/web/web_theme.dart';
import 'package:web_builder/web_builder.dart';

import 'styles/styles.dart';

void main() {
  print('NFDZ BUILDER START');

  WebBuilder(
    website: WebSite(
      theme: WebTheme.light().copyWith(accentColorHex: "#1E90FF"),
      routes: {
        "index.html": HomeWebPage(),
      },
      styles: [
        BootstrapCss.build(),
        CleanblogCss.build(),
        CustomCss.build(),
        FontAwesomeCss.build(),
        NunitoCss.build(),
        RobotoCss.build(),
        CookieConsentCss.build(),
      ],
      scripts: [
        JqueryJs.build(),
        CookieConsentJs.build(),
        CookieConsentLauncherJs.build(),
        BootstrapJs.build(),
        CleanblogJs.build(),
      ],
    ),
    assetsInputPath: 'assets/',
    assetsOutputPath: 'assets/',
    outputPath: 'output/',
  ).build();

  print('NFDZ BUILDER END');
  print(Directory('./output/index.html').absolute);
}
