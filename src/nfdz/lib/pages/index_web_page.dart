import 'package:nfdz_website/elements/common/contact_modal.dart';
import 'package:nfdz_website/elements/common/footer.dart';
import 'package:nfdz_website/elements/common/navigation_bar.dart';
import 'package:nfdz_website/elements/common/open_terminal_button.dart';
import 'package:nfdz_website/elements/common/scroll_to_top_button.dart';
import 'package:nfdz_website/elements/headers/headers_builder.dart';
import 'package:nfdz_website/elements/scripts/header_terminal.dart';
import 'package:nfdz_website/elements/scripts/timeline.dart';
import 'package:web_builder/common/constans.dart';
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
          body: WebBody(
            children: [
              ScrollToTopButton(),
              OpenTerminalButton(),
              NavigationBar(selectedOption: NavigationBarOption.home),
              ContactModal(),
              PageHeader(),
              Footer(),
              HeaderTerminalScript.build(),
              TimelineScript.build(),
            ],
          ),
        );
}

class PageHeader extends WebWidget {
  PageHeader()
      : super(
          before: '<header class="intro-header" style="background-image: url(\'assets/home-bg.jpg\')">',
          after: '</header>',
          content: """
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
          <div class="site-heading">
            <h3 class="unselectable" id="terminal-text"><span style="color:$kAccentColorHexPlaceholder">|</span></h3>
          </div>
        </div>
      </div>
    </div>
          """,
        );
}
