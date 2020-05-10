import 'package:meta/meta.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class PageHeader extends WebWidget {
  PageHeader({
    @required String backgroundImage,
    String content,
  }) : super(
          before: """
  <header class="intro-header" style="background-image: url(\'$backgroundImage\')">
    <div class="container">
        <div class="row">
          <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <div class="site-heading">
          """,
          after: """
            </div>
        </div>
      </div>
    </div>
  </header>
          """,
          content: content,
        );
}
