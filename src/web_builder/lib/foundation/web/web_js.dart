import 'package:meta/meta.dart';

class WebJs {
  final String name;
  final String script;
  WebJs({
    @required this.name,
    @required this.script,
  })  : assert(name?.isNotEmpty == true),
        assert(script?.isNotEmpty == true);
}
