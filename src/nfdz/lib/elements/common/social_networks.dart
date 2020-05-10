import 'package:web_builder/foundation/widgets/widgets.dart';

class SocialNetworks extends WebWidget {
  SocialNetworks()
      : super(
          before: '<ul class="list-inline text-center">',
          after: '</ul>',
          content: """
          <li>
              <a href="https://github.com/nfdz" target="_blank">
                  <span class="fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
              </a>
          </li>
          <li>
              <a href="https://www.linkedin.com/in/noe-fernandez/" target="_blank">
                  <span class="fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
                  </span>
              </a>
          </li>
          <li>
              <a href="https://twitter.com/nfdzls" target="_blank">
                  <span class="fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
              </a>
          </li>
          <li>
              <a href="https://medium.com/@nfdz" target="_blank">
                  <span class="fa-stack fa-lg">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-medium fa-stack-1x fa-inverse"></i>
                  </span>
              </a>
          </li>
          """,
        );
}
