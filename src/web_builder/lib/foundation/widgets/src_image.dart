import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class SrcImage extends WebWidget {
  SrcImage({@required String src, @required String alt, String width = "100%"})
      : super(
          before: '<img src="$src" alt="$alt" width="$width">',
          after: '',
        );
}
