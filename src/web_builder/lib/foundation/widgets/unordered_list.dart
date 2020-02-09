import 'package:web_builder/foundation/widgets/web_widget.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class UnorderedList extends WebWidget {
  UnorderedList(List<ListItem> entries)
      : super(
          before: '<ul>',
          after: '</ul>',
          children: entries,
        );
}
