import 'package:web_builder/foundation/widgets/web_widget.dart';

class WebHead extends WebWidget {
  WebHead({List<WebWidget> children})
      : super(
          before: '<head>',
          after: '</head>',
          children: children,
        );
}
