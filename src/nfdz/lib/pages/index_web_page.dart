import 'package:nfdz_website/common/constans.dart';
import 'package:nfdz_website/elements/scripts/google_analytics.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/widgets/web_head.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

const String _kIndexDescription =
    "This is my personal website where you can meet me personally and professionally and read my articles and personal projects.";
const String _kIndexKeywords =
    "engineer,software,developer,android,android developer,software engineer,telematics,telecommunications,personal website,resume,projects,traveler";
const String _kIndexRobot = "index,follow";
const String _kIndexTitle = "Noé Fernández";

class IndexWebPage extends WebPage {
  IndexWebPage()
      : super(
          head: WebHead(children: [
            GoogleAnalyticsScript.buildTagManagerScript(),
            GoogleAnalyticsScript.buildTagConfigScript(),
            HeadMeta.charset(kCharset),
            HeadMeta.httpEquiv(kHttpEquiv, kHttpEquivContent),
            HeadMeta.content(kMetaDescription, _kIndexDescription),
            HeadMeta.content(kMetaKeywords, _kIndexKeywords),
            HeadMeta.content(kMetaAuthor, kAuthor),
            HeadMeta.content(kMetaRobots, _kIndexRobot),
            HeadTitle(title: _kIndexTitle),
          ]),
          body: WebBody(),
        );
}
