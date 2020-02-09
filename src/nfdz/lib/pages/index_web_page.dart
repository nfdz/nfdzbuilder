import 'package:nfdz_website/elements/common/caption_text.dart';
import 'package:nfdz_website/elements/common/contact_modal.dart';
import 'package:nfdz_website/elements/common/footer.dart';
import 'package:nfdz_website/elements/common/left_list.dart';
import 'package:nfdz_website/elements/common/left_text.dart';
import 'package:nfdz_website/elements/common/navigation_bar.dart';
import 'package:nfdz_website/elements/common/open_terminal_button.dart';
import 'package:nfdz_website/elements/common/scroll_to_top_button.dart';
import 'package:nfdz_website/elements/common/timeline.dart';
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
const String _kWhoAmI1 = '''
I am a cheerful, reliable, team player and communicative person.
My passions include technological challenges and constantly improving myself through my own motivation
to learn as well as from those around me.
''';
const String _kWhoAmI2 = '''
I am a software engineer and developer with a varied background.
My experience pulls from studying and working in a lot of different fields.
''';
const String _kWhoAmI3 = '''
There is nothing in this world I admire more than the ability to beat the security of the known and go beyond
the comfort.
Over the past few years, business culture has grown in importance and new approaches to work have developed.
Through my experience and determination, I know I can contribute to any company.
''';
const String _kProfessional1 = '''
As a developer, not only do I aim to strengthen my projects, but also my abilities in general,
taking every opportunity to learn and grow personally and professionally.
''';
const String _kProfessional2 = '''
I am always thinking mind-boggling ideas. However, an idea is worthless if I am not able to execute it
correctly. That is why balance between theory and practice is very important for me.
''';
const String _kProfessional3 = '''
I was given management tasks in which I was responsible for small projects and delegating work to my team. I
was able to use agile methodologies,
such as <a href="https://en.wikipedia.org/wiki/Scrum_(software_development)" target="_blank">scrum</a>.
I have been recently more involved with engineering duties, but I am open to return to the management role
as knowing both worlds is crucial for future growth and improvement of myself and the company.
''';
const String _kEducation1 = '''
I am open to receiving new knowledge, it is one of the things I like most .
I have learned to, not only, appreciate those who teach and have taught me, but to also take initiative and
self-teach.
I like new leaning style like MOOCs (for example Udacity Associate Android Developer)
and old ones like books (for example Clean Code). Following, a temporary line with my certified education:
''';
const String _kEducationFlutterSummary = '''
App Brewery in collaboration with Google Flutter Team has created
The Complete Flutter App Development Bootcamp with Dart.
Covering all the fundamental concepts for Flutter development,
this is the most comprehensive Flutter course available online.
I really recommend this course, I have learned to use this platform, to learn to love it
and learn new things every day for myself.
I have already started using it in my projects as a freelance.
Check out the content of the course <a
href="https://www.appbrewery.co/p/flutter-development-bootcamp-with-dart" target="_blank">here</a>.
''';
const String _kEducationKotlinSummary = '''
Interesting course for those who want to land on this language supported by Google to develop Android Apps.
I recommend this course if you are an Android developer and already have some basic knowledge of Kotlin.
Congratulations to <a href="https://antonioleiva.com/" target="_blank">Antonio Leiva</a>, for his
natural vocation to teach with such dedication and enthusiasm.
Check out the content of the course <a href="https://antonioleiva.com/online-course/"
target="_blank">here</a>.
''';
const String _kEducationAndroidSummary = '''
The content of this <a
href="https://www.udacity.com/course/associate-android-developer-fast-track--nd818"
target="_blank">Udacity program</a>
is the perfect introduction to the world of Android for someone with my background.
It has an estimated duration of four months and is oriented to be examined at the end to achieve a certification.
It has individual tutors and several very interesting projects.
Check out my <a href="https://www.credential.net/c22yg4nt" target="_blank">Associate Android Developer
Certification</a> by Google.
''';
const String _kEducationCitiusSummary = '''
Program at the Autonomous University of Madrid. The main objective of the CITIUS program is to complete the training
of recent university graduates. It is focused on providing useful transverse skills in the business world.
I did this program while working full-time, so I was able to apply my new knowledge in my work environment.
It has several subjects available, each one of three weeks duration. I chose the following:
<br>
<ul>
  <li>Leadership Skills (Psychology and Sociology faculty): focused on improving leadership skills as a
    factor of integration and cohesion of the force.</li>
  <li>Successful Presentations - The Art of Public Speaking (Psychology and Sociology faculty): focused
    on improving the skills related to the art of public speaking.</li>
  <li>Team Management - The Coach Leader (Psychology and Sociology faculty): focused on improving
    leadership skills and coaching.</li>
</ul>
''';
const String _kEducationDegreeSummary = '''
Bachelor degree at the <a href="https://www.ugr.es/en/" target="_blank">University of Granada</a>.
With the mention in the <a href="https://en.wikipedia.org/wiki/Telematics"
  target="_blank">telematics</a> specialty.
I highlight the great vision that provides from the engineering point of view, providing me with a
great knowledge from electronic to software. You can check the
<a href="http://grados.ugr.es/telecomunicacion/pages/infoacademica/estudios" target="_blank">curriculum
  of the program</a>.
''';
const String _kSkills1 = '''
I have skills and experience in a lot of different areas of the development process.
Here are some of the most important ones for me:
''';
const String _kSkillsList1 =
    'Programming languages: Kotlin, Java, Dart, Python, Go, C, C++, SQL. (I have some experience in many more languages)';
const String _kSkillsList2 = '''
Platforms, frameworks and libraries: Android, Flutter, Realm, JUnit, Mockito, Firebase, Facebook, Protocol
buffers, Spring Boot, Micronaut, HornetQ, RabbitMQ, OpenDDS, RMI, CORBA, SWT, JavaFX, Eclipse RCP. (I have
used a lot of libraries and frameworks)
''';
const String _kSkillsList3 = '''
Software engineering knowledge: continuous integration and delivery (Github, Bamboo, Jenkins and Visual
Studio Team Services suite), specification of requirements, design patterns, source code control systems
(git, svn), clean code ♥ and agile software development methodologies.
''';
const String _kSkills2 =
    'However, I believe that what really gives worth to an engineer are transverse skills such as:';
const String _kExperience1 = '''
I have worked on many interesting projects where I have learned a lot since I was in high school.
Professionally, I have been working for more than 5 years. Following,
I have highlighted my most interesting experiences:
''';
const String _kFreelanceSummary1 = '''
I am confident to face specific projects alone and with remote groups.
I have used several online platforms and my networking in my city to get new projects.
I have done three projects related to the development of applications so far. These applications
needed the development of a backend (Python) and a backendless solution (Firebase).
''';
const String _kFreelanceSummary2 = '''
It is especially important for me to take care
of the first stage of planning and details to approach the project.
It is important that the client can see and understand the different stages of production and the
time of each stage.
''';
const String _kFreelanceSummary3 = '''
The first project was for a non-profit cultural association. We developed a platform to manage events,
people and loyalty. After finish and persuade the admin team, I published the code
under an open license in my <a href="https://github.com/nfdz/ClubApp" target="_blank">Github</a>
in order to show a nice Kotlin App and Firebase. Of course,
I would love that any association uses the platform.
''';
const String _kFreelanceSummary4 = '''
Another project that I would like to highlight is a tourism platform that I have developed using
Flutter framework. The development of apps for Android and iOS using Flutter is amazing.
I enjoyed the easy domain language every day and I save a lot of important time in development and
maintenance for this type of projects. This project uses the Firebase suite as backend solution.
Unfortunately I cannot provide the code since it is a private project but you can check the project
its <a href="https://evive.es/" target="_blank">website</a> and download the app in your app store.
''';
const String _kTraingymSummary1 = '<q>Android software engineer</q>';
const String _kTraingymSummary2 = '''
I was involved in several projects of the company. One of them was a very large legacy project with
hundreds of derived
applications in Google Play and millions of users around the world. Another was a new product to take
care and improve people health
who do not exercise often by proposing trainings at their level in their smartphone automatically.
I was in charge of the development and implementation of the bluetooth protocol of the first wearable
designed in Spain,
implementing an isolated development kit, as well as its integration into
the company's products such as the ones I mentioned before.
This time I also was the team leader of several interns who helped us a lot and we had a good time.
''';
const String _kTraingymSummary3 = '''
I highlight the following tasks and responsibilities:
<br>
<ul>
  <li>Design and implementation of continuous integration and continuous delivery system for Google Play
    with VSTS.
    Adding instrumented and unit tests to the pipe. All of this was for a complex scenario with a large
    legacy project with more than two hundred derived applications.</li>
  <li>Integration and synchronization of several Google services like Google Fit.</li>
  <li>Firebase Analytics integration.</li>
  <li>Migration of Fabric to Firebase Crashlytics.</li>
  <li>Design, development and integration of smartband SDK (full synchronization of data in local realm
    database and in our own cloud).</li>
  <li>Integration of NFC reader to read gym user cards.</li>
  <li>Modularization and refactoring of legacy projects into smaller projects (linking libraries using
    git submodules).</li>
  <li>Integration of Facebook services.</li>
  <li>Design and implementation of a push notification service with Firebase and Azure Notifications
    Hub.</li>
  <li>Design and implementation of a distributed communication system for thousands of devices connected
    at the same time with Azure IoT Hub (using MQTT beneath).</li>
  <li>Development of applications for tablets <q>kiosks</q>.</li>
</ul>
''';
const String _kGmvSummary1 =
    '<q>Satellite ground control software developer</q>';
const String _kGmvSummary2 = '''
I was able to work on the development of a new and very innovative product from scratch.
I learned a lot with my workmates and team leader, whom I appreciate very much and I thank him for all
the time he dedicated to me.
Over time, more and more responsibilities were delegated to me, such as the control of the schedule,
meeting of clients, documentation, user training, deliveries, management of people in my charge,
specification of new requirements and features, choice of technologies and development lines.
''';
const String _kGmvSummary3 = '''
As a multinational company, I had workmates and customers from the whole world and the documentation and code
followed international standards. The sector is a critical infrastructure and the product is expected to
have the highest quality.
Therefore, an important part of my work was to ensure the quality of software with unit tests,
continuous integration, design patterns,
simulation and validation environments. The technologies mainly involved were Java, Eclipse RCP, Python,
Protocol buffers, CORBA, HornetQ, C++, JUnit.
''';

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
              ContentIndex(),
              WebWidget(
                before: '<div class="container">',
                after: '</div>',
                children: [
                  SectionSeparator("who-am-I"),
                  RowCenter([
                    ColumnCenter([
                      SrcImage(
                        src: "assets/stormtrooper-grayscale.png",
                        alt: "Me at work",
                        width: "70%",
                      ),
                      CaptionText('Me any day at work'),
                    ]),
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Who am I? '),
                      LeftText(_kWhoAmI1),
                      LeftText(_kWhoAmI2),
                      LeftText(_kWhoAmI3),
                    ]),
                  ]),
                  SectionSeparator("professional-objectives"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Professional Objectives '),
                      LeftText(_kProfessional1),
                      LeftText(_kProfessional2),
                      LeftText(_kProfessional3),
                    ]),
                    ColumnCenter([
                      SrcImage(
                        src: "assets/professional-objectives.jpg",
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
                      LeftText(_kEducation1),
                      Timeline([
                        TimeLineEntry(
                          title: ' Flutter App Development Bootcamp ',
                          date: ' 2019 ',
                          summary: [Text(_kEducationFlutterSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Kotlin for Android Developers ',
                          date: ' 2018 ',
                          summary: [Text(_kEducationKotlinSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Associate Android Developer ',
                          date: ' 2017 ',
                          summary: [Text(_kEducationAndroidSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' CITIUS Program ',
                          date: ' 2015 ',
                          summary: [Text(_kEducationCitiusSummary)],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Degree in Telecommunications Engineering ',
                          date: ' 2010 - 2014 ',
                          summary: [Text(_kEducationDegreeSummary)],
                        ),
                      ]),
                    ], level: 8),
                  ]),
                  SectionSeparator("professional-skills"),
                  RowCenter([
                    ColumnCenter([
                      HeadingText(level: 2, text: ' Professional Skills '),
                      LeftText(_kSkills1),
                      LeftList([
                        ListItem.text(_kSkillsList1),
                        ListItem.text(_kSkillsList2),
                        ListItem.text(_kSkillsList3),
                      ]),
                      LeftText(_kSkills2),
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
                        src: "assets/professional-skills.jpeg",
                        alt: "Professional skills",
                        width: "70%",
                      ),
                      CaptionText('You never fail until you stop trying'),
                    ]),
                    Text(''),
                    RowCenter([
                      SrcImage(
                        src: "assets/tags.png",
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
                      LeftText(_kExperience1),
                      Timeline([
                        TimeLineEntry(
                          title: ' Freelance ',
                          date: ' 10/2018 - 09/2019',
                          summary: [
                            Text(_kFreelanceSummary1),
                            Text(_kFreelanceSummary2),
                            Text(_kFreelanceSummary3),
                            Text(_kFreelanceSummary4),
                          ],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' Trainingym ',
                          date: ' 08/2017 - 09/2018',
                          summary: [
                            Text(_kTraingymSummary1),
                            Text(_kTraingymSummary2),
                            Text(_kTraingymSummary3),
                          ],
                        ),
                        TimelineEntrySeparator(),
                        TimeLineEntry(
                          title: ' GMV ',
                          date: ' 01/2015 - 02/2017 ',
                          summary: [
                            Text(_kGmvSummary1),
                            Text(_kGmvSummary2),
                            Text(_kGmvSummary3),
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

class PageHeader extends WebWidget {
  PageHeader()
      : super(
          before:
              '<header class="intro-header" style="background-image: url(\'assets/home-bg.jpg\')">',
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
