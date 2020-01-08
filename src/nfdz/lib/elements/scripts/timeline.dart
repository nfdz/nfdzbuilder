import 'package:web_builder/foundation/widgets/widgets.dart';

class TimelineScript {
  static WebWidget build() {
    return InlineScript(
      script: """
jQuery(document).ready(function(\$) {
  \$(".timeline-entry-button > button").click(function() {
    if (\$(this).hasClass('on')) {
      \$(this).closest('.timeline-entry').children('.timeline-entry-summary').fadeOut(200);
      \$(this).removeClass('on');
    } else {
      \$(this).closest('.timeline-entry').children('.timeline-entry-summary').fadeIn(200);
      \$(this).addClass('on');
    }
  });
});
      """,
    );
  }
}
