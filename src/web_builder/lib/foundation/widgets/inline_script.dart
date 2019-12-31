import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class InlineScript extends WebWidget {
  InlineScript({@required String script})
      : super(
          before: '<script>',
          after: '</script>',
          content: script,
        );
}
