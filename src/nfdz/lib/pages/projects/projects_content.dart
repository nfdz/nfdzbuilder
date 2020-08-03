import 'package:nfdz_website/elements/common/common.dart';
import 'package:nfdz_website/elements/common/filterable_content.dart';

const String _flutterContentId = 'flutter-content';
const String _androidContentId = 'android-content';
const String _libraryContentId = 'library-content';
const String _kotlinContentId = 'kotlin-content';
const String _javaContentId = 'java-content';
const String _arduinoContentId = 'arduino-content';
const String _unityContentId = 'unity-content';
const String _securityContentId = 'security-content';

const projectsFilters = <FilterEntry>[
  FilterEntry(
    id: kNullFilterId,
    contentId: null,
    label: 'All',
    isActive: true,
  ),
  FilterEntry(
    id: 'flutter-filter',
    contentId: _flutterContentId,
    label: 'Flutter',
  ),
  FilterEntry(
    id: 'android-filter',
    contentId: _androidContentId,
    label: 'Android',
  ),
  FilterEntry(
    id: 'library-filter',
    contentId: _libraryContentId,
    label: 'Library',
  ),
  FilterEntry(
    id: 'kotlin-filter',
    contentId: _kotlinContentId,
    label: 'Kotlin',
  ),
  FilterEntry(
    id: 'java-filter',
    contentId: _javaContentId,
    label: 'Java',
  ),
  FilterEntry(
    id: 'arduino-filter',
    contentId: _arduinoContentId,
    label: 'Arduino',
  ),
  FilterEntry(
    id: 'unity-filter',
    contentId: _unityContentId,
    label: 'Unity',
  ),
  FilterEntry(
    id: 'security-filter',
    contentId: _securityContentId,
    label: 'Security',
  ),
];

const projectsContent = <FilterableContent>[
  FilterableContent(
    title: 'Club App',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _kotlinContentId],
  ),
  FilterableContent(
    title: 'Findoor',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _libraryContentId, _javaContentId],
  ),
  FilterableContent(
    title: 'Dependency Locator',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _libraryContentId, _javaContentId],
  ),
  FilterableContent(
    title: 'Permissions Watcher',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _javaContentId],
  ),
  FilterableContent(
    title: 'Foco',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _javaContentId],
  ),
  FilterableContent(
    title: 'Interactive tree advertising stand',
    contentLink: null, // TODO
    contentIds: [_arduinoContentId],
  ),
  FilterableContent(
    title: 'Saved.io++',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _javaContentId],
  ),
  FilterableContent(
    title: 'Provision of security in data distribution service',
    contentLink: null, // TODO
    contentIds: [_securityContentId],
  ),
  FilterableContent(
    title: 'Jason',
    contentLink: null, // TODO
    contentIds: [_javaContentId],
  ),
  FilterableContent(
    title: 'Global Game Jam: Eternity',
    contentLink: null, // TODO
    contentIds: [_unityContentId],
  ),
  FilterableContent(
    title: 'Tomatito',
    contentLink: null, // TODO
    contentIds: [_androidContentId, _javaContentId],
  ),
];
