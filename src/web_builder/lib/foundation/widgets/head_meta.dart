import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class HeadMeta extends WebWidget {
  HeadMeta._({@required String metaTag})
      : super(
          before: metaTag,
          after: '',
        );

  factory HeadMeta.content(String name, String content) {
    return HeadMeta._(metaTag: '<meta name="$name" content="$content">');
  }

  factory HeadMeta.charset(String charset) {
    return HeadMeta._(metaTag: '<meta charset="$charset">');
  }

  factory HeadMeta.httpEquiv(String httpEquiv, String content) {
    return HeadMeta._(
        metaTag: '<meta http-equiv="$httpEquiv" content="$content">');
  }
}
