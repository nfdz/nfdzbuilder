import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class SrcScript extends WebWidget {
  SrcScript({
    @required String scriptSrc,
    bool isAsync = false,
  }) : super(
          before: '<script ${_getAsyncTag(isAsync)}src="$scriptSrc">',
          after: '</script>',
        );

  static String _getAsyncTag(bool isAsync) => isAsync ? "async " : "";
}
