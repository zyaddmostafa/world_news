class Articalmodel {
  final String title;
  final String? subtitle;
  final String? image;

  Articalmodel(
      {required this.title, required this.subtitle, required this.image});

  factory Articalmodel.fromjson(json) {
    return Articalmodel(
        title: json['title'],
        subtitle: json['description'],
        image: json['urlToImage']);
  }
}
