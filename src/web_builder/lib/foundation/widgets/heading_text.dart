import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class HeadingText extends WebWidget {
  HeadingText({@required String text, @required int level})
      : super(
          before: '<h$level>',
          after: '</h$level>',
          content: text,
        );
}
