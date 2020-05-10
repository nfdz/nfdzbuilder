import 'package:nfdz_website/common/assets.dart';
import 'package:nfdz_website/elements/elements.dart';
import 'package:nfdz_website/pages/home/home_texts.dart';
import 'package:nfdz_website/routes/routes.dart';
import 'package:web_builder/common/constans.dart';
import 'package:web_builder/foundation/web/web_page.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class HomeWebPage extends WebPage {
  HomeWebPage()
      : super(
          distanceFromRoot: kHomeDistanceFromRoot,
          head: WebHead(children: [
            ...HeadersBuilder.buildHeaders(
              description: kHomePageDescription,
              keywords: kHomePageKeywords,
              robots: kHomePageRobots,
              title: kHomePageTitle,
            ),
          ]),
          body: WebBody(
            children: [
              ScrollToTopButton(),
              OpenTerminalButton(kHomeDistanceFromRoot),
              NavigationBar(
                distanceFromRoot: kHomeDistanceFromRoot,
                selectedOption: NavigationBarOption.home,
              ),
              ContactModal(),
              PageHeader(
                backgroundImage: Assets.homeBg.getPath(kHomeDistanceFromRoot),
                content:
                    '<h3 class="unselectable" id="terminal-text"><span style="color:$kAccentColorHexPlaceholder">|</span></h3>',
              ),
              ContentIndex(),
              WebWidget(
                before: '<div class="container">',
                after: '</div>',
                children: [
                  SectionSeparator("who-am-I"),
                  RowCenter([
                    ColumnCenter([
                      SrcImage(
                        src: Assets.stormtrooperImg
                            .getPath(kHomeDistanceFromRoot),
                        alt: "Me at work",
                        width: "70%",
                      ),
                      CaptionText('Me any day at work'),
                    ]),
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Who am I? '),
                      LeftText(kHomePageWhoAmI1),
                      LeftText(kHomePageWhoAmI2),
                      LeftText(kHomePageWhoAmI3),
                    ]),
                  ]),
                  SectionSeparator("professional-objectives"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Professional Objectives '),
                      LeftText(kHomePageProfessional1),
                      LeftText(kHomePageProfessional2),
                      LeftText(kHomePageProfessional3),
                    ]),
                    ColumnCenter([
                      SrcImage(
                        src: Assets.objetivesImg.getPath(kHomeDistanceFromRoot),
                        alt: "Professionals Objectives",
                        width: "70%",
                      ),
                      CaptionText('I love team sports like basketball'),
                    ]),
                  ]),
                  SectionSeparator("education"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Education '),
                      LeftText(kHomePageEducation1),
                      Timeline([
                        TimeLineEntry(
                          title: ' Flutter App Development Bootcamp ',
                          date: ' 2019 ',
                          summary: [Text(kHomePageEducationFlutterSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Kotlin for Android Developers ',
                          date: ' 2018 ',
                          summary: [Text(kHomePageEducationKotlinSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Associate Android Developer ',
                          date: ' 2017 ',
                          summary: [Text(kHomePageEducationAndroidSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' CITIUS Program ',
                          date: ' 2015 ',
                          summary: [Text(kHomePageEducationCitiusSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Degree in Telecommunications Engineering ',
                          date: ' 2010 - 2014 ',
                          summary: [Text(kHomePageEducationDegreeSummary)],
                        ),
                      ]),
                    ], level: 8),
                  ]),
                  SectionSeparator("professional-skills"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Professional Skills '),
                      LeftText(kHomePageSkills1),
                      LeftList([
                        ListItem.text(kHomePageSkillsList1),
                        ListItem.text(kHomePageSkillsList2),
                        ListItem.text(kHomePageSkillsList3),
                      ]),
                      LeftText(kHomePageSkills2),
                      LeftList([
                        ListItem.text('Being a team player.'),
                        ListItem.text('Being communicative.'),
                        ListItem.text('Being ethical and professional.'),
                        ListItem.text('Having habits of thought.'),
                        ListItem.text('Having personal work habits.'),
                      ]),
                    ]),
                    ColumnCenter([
                      SrcImage(
                        src: Assets.professionalImg
                            .getPath(kHomeDistanceFromRoot),
                        alt: "Professional skills",
                        width: "70%",
                      ),
                      CaptionText('You never fail until you stop trying'),
                    ]),
                    Text(''),
                    RowCenter([
                      SrcImage(
                        src: Assets.skillTagsImg.getPath(kHomeDistanceFromRoot),
                        alt:
                            "Kotlin, Java, Dart, Python, Flutter, Android, Firebase, IoT, Cloud",
                        width: "70%",
                      ),
                      CaptionText(
                          'Always learning and training, looking for the best solution for any project'),
                    ]),
                  ]),
                  SectionSeparator("work-experience"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Work Experience '),
                      LeftText(kHomePageExperience1),
                      Timeline([
                        TimeLineEntry(
                          title: ' Freelance ',
                          date: ' 10/2018 - 09/2019',
                          summary: [
                            Text(kHomePageFreelanceSummary1),
                            Text(kHomePageFreelanceSummary2),
                            Text(kHomePageFreelanceSummary3),
                            Text(kHomePageFreelanceSummary4),
                          ],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Trainingym ',
                          date: ' 08/2017 - 09/2018',
                          summary: [
                            Text(kHomePageTraingymSummary1),
                            Text(kHomePageTraingymSummary2),
                            Text(kHomePageTraingymSummary3),
                          ],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' GMV ',
                          date: ' 01/2015 - 02/2017 ',
                          summary: [
                            Text(kHomePageGmvSummary1),
                            Text(kHomePageGmvSummary2),
                            Text(kHomePageGmvSummary3),
                          ],
                        ),
                      ]),
                    ], level: 8),
                  ]),
                ],
              ),
              Footer(),
              HeaderTerminalScript.build(),
              TimelineScript.build(),
            ],
          ),
        );
}

class ContentIndex extends WebWidget {
  ContentIndex()
      : super(
          before: '<ul class="menu-headers">',
          after: '</ul>',
          content: """
    <li><a href="#who-am-I"> Who am I? </a></li>
    <li><a href="#professional-objectives"> Professional Objectives </a></li>
    <li><a href="#education"> Education </a></li>
    <li><a href="#professional-skills"> Professional Skills </a></li>
    <li><a href="#work-experience"> Work Experience </a></li>
          """,
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
