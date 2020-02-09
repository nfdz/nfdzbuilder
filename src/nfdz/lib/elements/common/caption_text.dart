import 'package:web_builder/foundation/widgets/web_widget.dart';

class CaptionText extends WebWidget {
  CaptionText(String text)
      : super(
          before: '<span class="caption text-muted">',
          after: '</span>',
          content: text,
        );
}
