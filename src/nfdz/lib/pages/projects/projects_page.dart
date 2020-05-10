import 'package:nfdz_website/common/assets.dart';
import 'package:nfdz_website/elements/elements.dart';
import 'package:nfdz_website/pages/projects/projects_texts.dart';
import 'package:nfdz_website/routes/routes.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class ProjectsWebPage extends WebPage {
  ProjectsWebPage()
      : super(
          distanceFromRoot: kProjectsDistanceFromRoot,
          head: WebHead(children: [
            ...HeadersBuilder.buildHeaders(
              description: kProjectsPageDescription,
              keywords: kProjectsPageKeywords,
              robots: kProjectsPageRobots,
              title: kProjectsPageTitle,
            ),
          ]),
          body: WebBody(
            children: [
              ScrollToTopButton(),
              NavigationBar(
                distanceFromRoot: kProjectsDistanceFromRoot,
                selectedOption: NavigationBarOption.projects,
              ),
              ContactModal(),
              PageHeader(
                backgroundImage:
                    Assets.projectsBg.getPath(kProjectsDistanceFromRoot),
                content:
                    '<h3 class="unselectable">My open and free software projects</h3>',
              ),
              WebWidget(
                before: '<div class="container">',
                after: '</div>',
                children: [],
              ),
              Footer(),
              HeaderTerminalScript.build(),
              TimelineScript.build(),
            ],
          ),
        );
}

class SectionSeparator extends WebWidget {
  SectionSeparator(String id)
      : super(
          before: '<hr id="$id" class="section-separator">',
          after: '',
        );
}

class RowCenter extends WebWidget {
  RowCenter(List<WebWidget> children)
      : super(
          before: '<div class="row row-centered">',
          after: '</div>',
          children: children,
        );
}

class ColumnCenter extends WebWidget {
  ColumnCenter(List<WebWidget> children, {int level = 6})
      : super(
          before:
              '<div class="col-xs-$level col-centered col-min col-section">',
          after: '</div>',
          children: children,
        );
}
