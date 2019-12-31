import 'package:nfdz_website/elements/headers/headers_builder.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/widgets/web_head.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

const String _kIndexDescription =
    "This is my personal website where you can meet me personally and professionally and read my articles and personal projects.";
const String _kIndexKeywords =
    "engineer,software,developer,android,android developer,software engineer,telematics,telecommunications,personal website,resume,projects,traveler";
const String _kIndexRobots = "index,follow";
const String _kIndexTitle = "Noé Fernández";

class IndexWebPage extends WebPage {
  IndexWebPage()
      : super(
          head: WebHead(children: [
            ...HeadersBuilder.buildHeaders(
              description: _kIndexDescription,
              keywords: _kIndexKeywords,
              robots: _kIndexRobots,
              title: _kIndexTitle,
            ),
          ]),
          body: WebBody(),
        );
}
