import 'package:web_builder/foundation/widgets/web_widget.dart';

class ListItem extends WebWidget {
  ListItem(WebWidget content)
      : super(
          before: '<li>',
          after: '</li>',
          children: [content],
        );
  factory ListItem.text(String content) =>
      ListItem(WebWidget(before: '', after: '', content: content));
}
