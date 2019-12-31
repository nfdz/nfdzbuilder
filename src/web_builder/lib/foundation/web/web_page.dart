import 'package:meta/meta.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web_context.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';
import 'package:web_builder/common/string_extensions.dart';

class WebPage {
  final WebHead head;
  final WebBody body;
  final int distanceFromRoot;

  WebPage({
    @required this.head,
    @required this.body,
    this.distanceFromRoot = 0,
  });

  String build(WebContext context) {
    String pageOutput = '<!DOCTYPE html>\n';
    pageOutput += '<html lang="${context.localeCode}">\n';
    final copyHead = head.copyWith();
    _injectStyles(context, copyHead);
    _injectScripts(context, copyHead);
    pageOutput += copyHead.build();
    pageOutput += body.build();
    pageOutput += kBuilderComment;
    pageOutput += '\n</html>';
    return pageOutput;
  }

  void _injectStyles(WebContext context, WebHead head) {
    context?.stylesPaths?.forEach((stylePath) => head.children.add(HrefLink(
          href: stylePath.getRelativePath(distanceFromRoot),
          rel: HrefLink.REL_STYLESHEET,
          type: HrefLink.TYPE_CSS,
        )));
  }

  void _injectScripts(WebContext context, WebHead head) {
    context?.scriptsPaths?.forEach((scriptPath) => head.children.add(SrcScript(
          scriptSrc: scriptPath.getRelativePath(distanceFromRoot),
        )));
  }
}
