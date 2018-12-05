class ImageModel {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  ImageModel(this.id, this.title, this.url);
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    title = parsedJson['title'];
    url = parsedJson['url'];
  }
}
