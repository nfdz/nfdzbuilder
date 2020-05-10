import 'package:nfdz_website/common/assets.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';

class OpenTerminalButton extends WebWidget {
  OpenTerminalButton(int distanceFromRoot)
      : super(
          before:
              '<button onclick="openTerminal()" class="terminal-button" title="Open terminal">',
          after: '</button>',
          content:
              'Terminal Resume&nbsp; <img src="${Assets.terminalIcon.getPath(distanceFromRoot)}" width="18" height="18">',
        );
}
