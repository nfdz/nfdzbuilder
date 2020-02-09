import 'package:nfdz_website/common/constans.dart';
import 'package:nfdz_website/elements/scripts/google_analytics.dart';
import 'package:web_builder/foundation/widgets/web_widget.dart';
import 'package:web_builder/foundation/widgets/widgets.dart';
import 'package:meta/meta.dart';

class HeadersBuilder {
  static List<WebWidget> buildHeaders({
    @required String description,
    @required String keywords,
    @required String robots,
    @required String title,
  }) =>
      [
        HeadMeta.charset(kCharset),
        HeadMeta.httpEquiv(kHttpEquiv, kHttpEquivContent),
        HeadMeta.content(kMetaDescription, description),
        HeadMeta.content(kMetaKeywords, keywords),
        HeadMeta.content(kMetaAuthor, kAuthor),
        HeadMeta.content(kMetaRobots, robots),
        HeadTitle(title: title),
        WebWidget(before: kBuilderComment, after: ''),
        GoogleAnalyticsScript.buildTagManagerScript(),
        GoogleAnalyticsScript.buildTagConfigScript(),
      ];
}
