import 'package:web_builder/foundation/widgets/web_widget.dart';

class LeftText extends WebWidget {
  LeftText(String text)
      : super(
          before: '<p class="left-text">',
          after: '</p>',
          content: text,
        );
}
