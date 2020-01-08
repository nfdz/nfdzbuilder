import 'package:web_builder/foundation/widgets/widgets.dart';
import 'package:web_builder/common/string_extensions.dart';

enum NavigationBarOption { home, projects, blog, terminal, modal }

class NavigationBar extends WebWidget {
  NavigationBar({
    int distanceFromRoot = 0,
    NavigationBarOption selectedOption = null,
  }) : super(
          before: '<nav class="navbar navbar-default navbar-custom navbar-fixed-top">',
          after: '</nav>',
          content: """
          <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header page-scroll">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <i class="fa fa-bars"></i>
      </button>
      <a class="navbar-brand" href="index.html">Noé Fernández</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
      ${_getOption(
            distanceFromRoot,
            selectedOption == NavigationBarOption.home,
            'Home',
            'index.html',
          )}
      ${_getOption(
            distanceFromRoot,
            selectedOption == NavigationBarOption.projects,
            'Projects',
            'projects/index.html',
          )}
      ${_getOption(
            distanceFromRoot,
            selectedOption == NavigationBarOption.blog,
            'Blog',
            'https://medium.com/@nfdz',
            true,
          )}
      ${_getOption(
            distanceFromRoot,
            selectedOption == NavigationBarOption.terminal,
            'Terminal',
            'terminal/index.html',
          )}
        <li>
          <a href="#" data-toggle="modal" data-target="#contact-modal">Contact</a>
        </li>
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container -->
          """,
        );

  static String _getOption(
    int distanceFromRoot,
    bool isSelected,
    String label,
    String path, [
    bool isPathAbsolute = false,
  ]) {
    return isSelected
        ? '<li><a href="#"> &gt; $label &lt; </a></li>'
        : '<li><a href="${isPathAbsolute ? path : path.getRelativePath(distanceFromRoot)}">$label</a></li>';
  }
}
