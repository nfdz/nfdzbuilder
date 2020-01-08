import 'package:web_builder/foundation/widgets/widgets.dart';

class ScrollToTopButton extends WebWidget {
  ScrollToTopButton()
      : super(
          before: '<button onclick="scrollToTop()" class="scrollTop-button" title="Go to top">',
          after: '</button>',
          content: 'Back to top',
        );
}
