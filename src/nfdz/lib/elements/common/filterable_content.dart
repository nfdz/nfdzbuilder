import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class FilterableContent {
  final String contentLink;
  final String title;
  final List<String> contentIds;
  final String date; // TODO
  const FilterableContent({
    @required this.title,
    @required this.contentLink,
    this.contentIds,
    this.date,
  });

  WebWidget buildWidget() => WebWidget(
        before:
            '<a href="$contentLink"><div class="col-xs-12 col-centered filterable-content-grid-item${_serializeIds()}">',
        after: ' </div></a>',
        content: '<h4>$title</h4><hr>',
      );

  String _serializeIds() {
    if (contentIds == null) return '';
    String output = '';
    for (String contentId in contentIds) {
      output += ' $contentId';
    }
    return output;
  }
}

class FilterableContentArea extends WebWidget {
  FilterableContentArea(List<FilterableContent> entries)
      : super(
          before: '<div class="row row-centered filterable-content-grid">',
          after: '</div>',
          children: entries.map((entry) => entry.buildWidget()).toList(),
        );
}
