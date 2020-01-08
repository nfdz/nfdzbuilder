import 'package:web_builder/foundation/widgets/widgets.dart';

class OpenTerminalButton extends WebWidget {
  OpenTerminalButton()
      : super(
          before: '<button onclick="openTerminal()" class="terminal-button" title="Open terminal">',
          after: '</button>',
          content: 'Terminal Resume&nbsp; <img src="assets/terminal_icon.png" width="18" height="18">',
        );
}
