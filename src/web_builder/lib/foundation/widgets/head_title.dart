import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class HeadTitle extends WebWidget {
  HeadTitle({@required String title})
      : super(
          before: '<title>',
          after: '</title>',
          content: title,
        );
}
