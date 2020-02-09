import 'package:web_builder/foundation/widgets/web_widget.dart';

class Text extends WebWidget {
  Text(String text)
      : super(
          before: '<p>',
          after: '</p>',
          content: text,
        );
}
