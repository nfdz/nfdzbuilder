import 'package:web_builder/foundation/web/web.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';
import "package:test/test.dart";

void main() {
  group("Create a webpage in a programmatic way", () {
    test("with no content", () {
      WebPage(
        head: WebHead(),
        body: WebBody(),
      );
    });
    test("with standard head content", () {
      WebPage(
        head: WebHead(
          children: [
            HeadMeta.charset("utf-8"),
            HeadMeta.content("name", "content"),
            HeadMeta.httpEquiv("httpEquiv", "content"),
            InlineScript(script: ";"),
            SrcScript(scriptSrc: "test"),
            SrcScript(isAsync: true, scriptSrc: "test"),
          ],
        ),
        body: WebBody(),
      );
    });
  });
}
