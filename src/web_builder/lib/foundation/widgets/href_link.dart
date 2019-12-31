import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class HrefLink extends WebWidget {
  static const String REL_STYLESHEET = "stylesheet";
  static const String REL_ICON = "icon";

  HrefLink({
    @required String href,
    @required String rel,
    String type,
    String sizes,
  }) : super(
          before:
              '<link href="$href" rel="$rel" ${_getTypeTag(type)}${_getSizesTag(sizes)}/>',
          after: '',
        );

  static String _getTypeTag(String type) =>
      type?.isNotEmpty == true ? 'type="$type" ' : '';
  static String _getSizesTag(String sizes) =>
      sizes?.isNotEmpty == true ? 'sizes="$sizes" ' : '';
}
