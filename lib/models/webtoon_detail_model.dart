class WebtoonDetailModel {
  final String title, about, genre, age, thumb;

  WebtoonDetailModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        about = json["about"],
        genre = json["genre"],
        thumb = json["thumb"],
        age = json["age"];
}
