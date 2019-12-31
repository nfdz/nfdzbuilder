import 'package:meta/meta.dart';

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

  String build() {
    String output = before;
    output += content;
    children?.forEach((child) => output += child.build());
    output += after;
    return output;
  }
}
