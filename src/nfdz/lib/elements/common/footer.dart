import 'package:nfdz_website/elements/common/social_networks.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class Footer extends WebWidget {
  Footer()
      : super(
          before: """
    <footer>
      <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            """,
          after: """
              <p class="copyright text-muted">Copyright &copy; Noé Fernández 2020</p>
            </div>
        </div>
      </div>
    </footer>
          """,
          children: [
            SocialNetworks(),
          ],
        );
}
