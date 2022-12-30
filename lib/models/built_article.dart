library built_article;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hackernews_app/models/serializers.dart';

part 'built_article.g.dart';

abstract class BuiltArticle
    implements Built<BuiltArticle, BuiltArticleBuilder> {
  // fields go here
  int get id;
  bool? get deleted;
  String? get type; // TODO - Implement a EnumClass for Type
  String get by;
  int get time;
  String? get text;
  bool? get dead;
  int? get parent;
  int? get poll;
  BuiltList<int> get kids;
  String? get url;
  int? get score;
  String? get title;
  BuiltList<int>? get parts;
  int? get descendants;

  BuiltArticle._();

  factory BuiltArticle([updates(BuiltArticleBuilder b)]) = _$BuiltArticle;

  String toJson() {
    return json.encode(serializers.serializeWith(BuiltArticle.serializer, this));
  }

  static BuiltArticle? fromJson(String jsonString) {
    return serializers.deserializeWith(BuiltArticle.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltArticle> get serializer => _$builtArticleSerializer;
}
