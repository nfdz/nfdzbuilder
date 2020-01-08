import 'package:web_builder/foundation/widgets/widgets.dart';

// TODO refactor social networks from footer and here
class ContactModal extends WebWidget {
  ContactModal()
      : super(
          before: '<div class="modal fade" id="contact-modal" role="dialog">',
          after: '</div>',
          content: """
          <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title text-center">Contact</h3>
      </div>
      <div class="modal-body text-center">
        <h4> Email </h4>
        <h3><a class="contact-email" href="mailto:noe.fernandez@protonmail.com?Subject=Hello" target="_top"> noe.fernandez@protonmail.com </a></h3>

        <br>
        <h4></span> Networks </h4>
        <!-- THIS CONTENT MUST BE THE SAME THAT FOOTER CONTENT -->
        <ul class="list-inline text-center">
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
        </ul>
      </div>
    </div>
  </div>
          """,
        );
}
