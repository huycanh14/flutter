class Photo {
  String id, secret, server, title;
  int farm;
  Photo.fromMap(Map snapshot) {
    this.id = snapshot['id'];
    this.secret = snapshot['secret'];
    this.server = snapshot['server'];
    this.farm = snapshot['farm'];
    this.title = snapshot['title'];
  }

  urlString() {
    return 'https://farm$farm.staticflickr.com/$server/$id\_$secret.jpg';
  }
}