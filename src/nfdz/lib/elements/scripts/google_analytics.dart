import 'package:web_builder/foundation/widgets/widgets.dart';

class GoogleAnalyticsScript {
  static WebWidget buildTagManagerScript() {
    return SrcScript(
      scriptSrc: "https://www.googletagmanager.com/gtag/js?id=UA-124183504-1",
      isAsync: true,
    );
  }

  static WebWidget buildTagConfigScript() {
    return InlineScript(
      script: """
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());
    gtag('config', 'UA-124183504-1');
      """,
    );
  }
}
