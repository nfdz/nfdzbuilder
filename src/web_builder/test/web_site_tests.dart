import 'package:web_builder/foundation/web/web.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';
import "package:test/test.dart";

void main() {
  group("Create a website in a programmatic way", () {
    test("with no content", () {
      WebSite(
        theme: WebTheme.light(),
        routes: {'index.html': WebPage(head: WebHead(), body: WebBody())},
      );
    });
    test("with one page", () {
      final site = WebSite(
        theme: WebTheme.light(),
        routes: {'index.html': WebPage(head: WebHead(), body: WebBody())},
      );
      expect(site.build().length, 1);
    });
    test("with two pages, styles and scripts", () {
      final site = WebSite(
        theme: WebTheme.light(),
        styles: [
          WebCss(name: 'style 1', stylesheet: '.'),
          WebCss(name: 'style 2', stylesheet: '.'),
        ],
        scripts: [
          WebJs(name: 'script 1', script: ';'),
          WebJs(name: 'script 2', script: ';'),
        ],
        routes: {
          'index.html': WebPage(head: WebHead(), body: WebBody()),
          'options.html': WebPage(head: WebHead(), body: WebBody()),
        },
      );
      expect(site.build().length, 6);
    });
  });
}
