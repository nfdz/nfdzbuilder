import 'package:nfdz_website/elements/common/filter_area.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class FilterScript {
  static WebWidget build() {
    return InlineScript(
      script: """
function removeFilter() {
  \$('.filterable-content-grid')?.isotope({ filter: '*' });
  \$('.filter-active')?.removeClass('filter-active');
  \$('.$kNullFilterId')?.addClass('filter-active');
}
function filterContent(filterId, contentId) {
  \$('.filterable-content-grid')?.isotope({ filter: '.' + contentId });
  \$('.filter-active')?.removeClass('filter-active');
  \$('.' + filterId)?.addClass('filter-active');
}

\$(window).on("load", function () {
  \$('.filterable-content-grid').isotope({
    // options
    itemSelector: '.project-grid-item',
    layoutMode: 'fitRows'
  });
  removeFilter();
});

      """,
    );
  }
}
