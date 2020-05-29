import 'Photo.dart';

class FlickrPhoto {
  int page, pages;
  List<Photo> photo;
  FlickrPhoto.fromMap(Map snapshot) {
    this.page = snapshot['page'];
    this.pages = snapshot['pages'];
    List photoMap = snapshot['photo'];
    this.photo = photoMap.map((t) => Photo.fromMap(t)).toList();
  }
}