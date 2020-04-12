import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

/// Warning: Hardcoded [script] should not contain special characters.
/// Remember to escape \ and $ characters.
class InlineScript extends WebWidget {
  InlineScript({
    @required String script,
    bool isAsync = false,
  }) : super(
          before: '<script${_getAsyncTag(isAsync)}>',
          after: '</script>',
          content: script,
        );

  static String _getAsyncTag(bool isAsync) => isAsync ? " async" : "";
}
