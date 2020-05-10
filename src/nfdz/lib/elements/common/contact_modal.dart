import 'package:nfdz_website/elements/common/social_networks.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class ContactModal extends WebWidget {
  ContactModal()
      : super(
          before: """
<div class="modal fade" id="contact-modal" role="dialog">
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
          """,
          after: """
      </div>
    </div>
  </div>
</div>
           """,
          children: [
            SocialNetworks(),
          ],
        );
}
