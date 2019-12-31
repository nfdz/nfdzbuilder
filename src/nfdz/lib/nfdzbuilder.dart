import 'package:web_builder/foundation/web/web.dart';
import 'package:web_builder/foundation/web/web_theme.dart';
import 'package:web_builder/web_builder.dart';

void main() {
  print('NFDZ BUILDER START');

  WebBuilder(
    website: WebSite(
      theme: WebTheme.light(),
      routes: {},
    ),
    assetsInputPath: 'assets/',
    assetsOutputPath: 'assets/',
    outputPath: 'output/',
  ).build();

  print('NFDZ BUILDER END');
}
