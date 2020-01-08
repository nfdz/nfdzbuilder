import 'package:meta/meta.dart';
import 'package:web_builder/foundation/web/web.dart';

class WebWidget {
  final String before;
  final String after;
  final String content;
  final List<WebWidget> children;

  WebWidget({
    @required this.before,
    @required this.after,
    this.content = '',
    this.children = const [],
  });

  String build(WebContext context) {
    String output = before;
    output += content;
    children?.forEach((child) => output += child.build(context));
    output += after;
    return context.theme.injectTheme(output);
  }
}
