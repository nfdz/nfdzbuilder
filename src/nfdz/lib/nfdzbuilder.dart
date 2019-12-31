import 'package:web_builder/foundation/web/web.dart';
import 'package:web_builder/web_builder.dart';

void main() {
  print('NFDZ BUILDER START');

  WebBuilder(
    website: WebSite(),
    assetsInputPath: 'assets',
    assetsOutputPath: 'assets',
    outputPath: 'output',
  );

  print('NFDZ BUILDER END');
}
