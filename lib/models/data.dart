class Source {
  String? id;
  String? name;
  String? description;
  String? url;
  String? category;
  String? language;
  String? country;

  Source({
    this.id, this.name, this.description, this.url, this.category, this.language, this.country
  });

  Source copyWith({
    String? id, String? name, String? description, String? url, String? category, String? language, String? country
  }) =>
      Source(id: id ?? this.id,
          name: name ?? this.name,
          description: description ?? this.description,
          url: url ?? this.url,
          category: category ?? this.category,
          language: language ?? this.language,
          country: country ?? this.country);

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
    };
    map["id"] = id;
    map["name"] = name;
    map["description"] = description;
    map["url"] = url;
    map["category"] = category;
    map["language"] = language;
    map["country"] = country;
    return map;
  }

  Source.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    url = json["url"];
    category = json["category"];
    language = json["language"];
    country = json["country"];
  }
}

class Datadart {
  String? status;
  List<Source>? sourcesList;

  Datadart({
    this.status, this.sourcesList
  });

  Datadart copyWith({
    String? status, List<Source>? sourcesList
  }) =>
      Datadart(status: status ?? this.status,
          sourcesList: sourcesList ?? this.sourcesList);

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
    };
    map["status"] = status;
    if (sourcesList != null) {
      map["sources"] = sourcesList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  Datadart.fromJson(dynamic json) {
    status = json["status"];
    if (json["sources"] != null) {
      sourcesList = [];
      json["sources"].forEach((v) {
        sourcesList?.add(Source.fromJson(v));
      });
    }
  }
}