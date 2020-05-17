import 'package:nfdz_website/common/assets.dart';
import 'package:nfdz_website/elements/elements.dart';
import 'package:nfdz_website/elements/scripts/filter.dart';
import 'package:nfdz_website/pages/projects/projects_texts.dart';
import 'package:nfdz_website/routes/routes.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class ProjectsWebPage extends WebPage {
  static const projectFilters = <FilterEntry>[
    FilterEntry(
      id: kNullFilterId,
      contentId: null,
      label: 'All',
      isActive: true,
    ),
    FilterEntry(
      id: 'flutter-filter',
      contentId: 'flutter-content',
      label: 'Flutter',
    ),
    FilterEntry(
      id: 'android-filter',
      contentId: 'android-content',
      label: 'Android',
    ),
    FilterEntry(
      id: 'library-filter',
      contentId: 'library-content',
      label: 'Library',
    ),
    FilterEntry(
      id: 'kotlin-filter',
      contentId: 'kotlin-content',
      label: 'Kotlin',
    ),
    FilterEntry(
      id: 'java-filter',
      contentId: 'java-content',
      label: 'Java',
    ),
    FilterEntry(
      id: 'arduino-filter',
      contentId: 'arduino-content',
      label: 'Arduino',
    ),
    FilterEntry(
      id: 'unity-filter',
      contentId: 'unity-content',
      label: 'Unity',
    ),
    FilterEntry(
      id: 'security-filter',
      contentId: 'security-content',
      label: 'Security',
    ),
  ];

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
                children: [
                  FilterArea(projectFilters),
                  FilterScript.build(),
                ],
              ),
              Footer(),
            ],
          ),
        );
}
