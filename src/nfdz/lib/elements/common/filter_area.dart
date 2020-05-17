import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

const kNullFilterId = 'all-filter';

class FilterEntry {
  final String id;
  final String contentId;
  final String label;
  final bool isActive;
  const FilterEntry({
    @required this.id,
    @required this.contentId,
    @required this.label,
    this.isActive = false,
  });

  WebWidget buildWidget() => WebWidget(
        before:
            '<li><a href="#" class="$id${isActive ? ' filter-active' : ''}" onclick="${id == kNullFilterId ? 'removeFilter()' : 'filterContent(\'$id\', \'$contentId\')'};return false;">',
        after: '</a></li>',
        content: label,
      );
}

class FilterArea extends WebWidget {
  FilterArea(List<FilterEntry> entries)
      : super(
          before: '<ul class="filterable-content-filter">',
          after: '</ul>',
          children: entries.map((entry) => entry.buildWidget()).toList(),
        );
}
