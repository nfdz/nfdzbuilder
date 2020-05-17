import 'package:web_builder/foundation/web/web.dart';

class CookieConsentLauncherJs {
  static WebJs build() {
    return WebJs(
      name: "cookieconsent-launcher.js",
      script: """
    window.addEventListener("load", function () {
      window.cookieconsent.initialise({
        "palette": {
          "popup": {
            "background": "#13191C"
          },
          "button": {
            "background": "{{ACCENT_COLOR}}"
          }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": {
          "message": "This website uses cookies just to count visits (Google Analytics)."
        }
      })
    });
    """,
    );
  }
}
