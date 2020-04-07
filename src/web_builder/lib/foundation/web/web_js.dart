import 'package:meta/meta.dart';

// TODO: Use an asset file instead a String variable
class WebJs {
  final String name;
  final String script;

  /// Warning: Hardcoded [script] should not contain special characters.
  /// Remember to escape \ and $ characters.
  WebJs({
    @required this.name,
    @required this.script,
  })  : assert(name?.isNotEmpty == true),
        assert(script?.isNotEmpty == true);
}
