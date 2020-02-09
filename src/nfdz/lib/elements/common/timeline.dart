import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';

class Timeline extends WebWidget {
  Timeline(List<WebWidget> entries)
      : super(
          before: '<div class="timeline">',
          after: '</div>',
          children: entries,
        );
}

class TimelineEntrySeparator extends WebWidget {
  TimelineEntrySeparator()
      : super(
          before: '<div class="timeline-entry-separator">',
          after: '</div>',
        );
}

class TimeLineEntry extends WebWidget {
  TimeLineEntry({
    @required String title,
    @required String date,
    @required List<WebWidget> summary,
  }) : super(
          before: '<div class="timeline-entry">',
          after: '</div>',
          children: [
            WebWidget(
              before: '<div class="timeline-entry-title">',
              after: '</div>',
              content: title,
            ),
            WebWidget(
              before: '<div class="timeline-entry-date">',
              after: '</div>',
              content: date,
            ),
            WebWidget(
              before: '<div class="timeline-entry-button">',
              after: '</div>',
              content:
                  '<button data-label1="More" data-label2="Less">More</button>',
            ),
            WebWidget(
              before: '<div class="timeline-entry-summary">',
              after: '</div>',
              children: summary,
            ),
          ],
        );
}
