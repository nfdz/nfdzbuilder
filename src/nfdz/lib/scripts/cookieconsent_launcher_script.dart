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
            "background": "#1E90FF"
          }
        },
        "theme": "classic",
        "position": "bottom-right",
        "content": {
          "message": "This website uses cookies just to track visits (analytics stuff for me)."
        }
      })
    });
    """,
    );
  }
}
