import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

const kNullFilterId = 'all-filter';

class FilterEntry {
  final String id;
  final String label;
  final bool isActive;
  const FilterEntry({
    @required this.id,
    @required this.label,
    this.isActive = false,
  });

  WebWidget buildWidget() => WebWidget(
        before:
            '<li><a href="#" class="$id${isActive ? ' filter-active' : ''}" onclick="${id == kNullFilterId ? 'removeFilter()' : 'filter($id)'};return false;">',
        after: '</a></li>',
        content: label,
      );
}

class FilterArea extends WebWidget {
  FilterArea(List<FilterEntry> entries)
      : super(
          before: '<div class="row row-centered filterable-content-grid">',
          after: '</div>',
          children: entries.map((entry) => entry.buildWidget()).toList(),
        );
}
