import 'package:flutter_test/flutter_test.dart';
import 'package:hackernews_app/models/built_article.dart';

void main() {
  test('Deserialize JSON to BuiltArticle', () {
    const String jsonString =
        """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8958,8884,8887,8869,8873,8940,8908,9005,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";
    BuiltArticle article = BuiltArticle.fromJson(jsonString) as BuiltArticle;

    expect(article.by, 'dhouston');
    expect(article.kids.runtimeType, List<int>);
  });
  test('Serialize BuiltArticle object', () {
    const String jsonString =
        """{"by":"dhouston","descendants":71,"id":8863,"kids":[9224,8917,8952,8958,8884,8887,8869,8873,8940,8908,9005,9671,9067,9055,8865,8881,8872,8955,10403,8903,8928,9125,8998,8901,8902,8907,8894,8870,8878,8980,8934,8943,8876],"score":104,"time":1175714200,"title":"My YC app: Dropbox - Throw away your USB drive","type":"story","url":"http://www.getdropbox.com/u/2/screencast.html"}""";
    BuiltArticle article = BuiltArticle.fromJson(jsonString) as BuiltArticle;

    expect(article.toJson().runtimeType, String);
  });
}
