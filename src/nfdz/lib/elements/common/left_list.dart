import 'package:web_builder/foundation/widgets/web_widget.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class LeftList extends WebWidget {
  LeftList(List<ListItem> entries)
      : super(
          before: '<ul class="left-text">',
          after: '</ul>',
          children: entries,
        );
}
