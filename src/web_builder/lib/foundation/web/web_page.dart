import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web_context.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class WebPage {
  final WebHead head;
  final WebBody body;

  WebPage({
    @required this.head,
    @required this.body,
  });

  String build(WebContext context) {
    String pageOutput = '<!DOCTYPE html>\n';
    pageOutput += '<html lang="${context.localeCode}">\n';
    pageOutput += kBuilderComment;
    pageOutput += head.build();
    pageOutput += body.build();
    pageOutput += '\n</html>';
    return pageOutput;
  }
}
