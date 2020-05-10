import 'package:web_builder/common/string_extensions.dart';

class Assets {
  static const terminalIcon = Asset('assets/terminal_icon.png');
  static const homeBg = Asset('assets/home-bg.jpg');
  static const stormtrooperImg = Asset('assets/stormtrooper-grayscale.png');
  static const objetivesImg = Asset('assets/professional-objectives.jpg');
  static const professionalImg = Asset('assets/professional-skills.jpeg');
  static const skillTagsImg = Asset('assets/tags.png');
  static const projectsBg = Asset('assets/projects-bg.jpg');
}

class Asset {
  final String rootPath;
  const Asset(this.rootPath);

  String getPath(int distanceFromRoot) =>
      rootPath.getRelativePath(distanceFromRoot);
}
