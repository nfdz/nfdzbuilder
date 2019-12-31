import 'package:web_builder/foundation/widgets/web_widget.dart';

class WebBody extends WebWidget {
  WebBody({List<WebWidget> children})
      : super(
          before: '<body>',
          after: '</body>',
          children: children,
        );
}
