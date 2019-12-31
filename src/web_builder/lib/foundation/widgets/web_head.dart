import 'package:web_builder/foundation/widgets/web_widget.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class WebHead extends WebWidget {
  WebHead({List<WebWidget> children})
      : super(
          before: '<head>',
          after: '</head>',
          children: children,
        );

  WebHead copyWith({List<WebWidget> children}) {
    return WebHead(
      children: children != null ? children : List<String>.from(this.children),
    );
  }
}
