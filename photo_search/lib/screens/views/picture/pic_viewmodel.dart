import 'dart:convert';

import 'package:photo_search/datamodels/FlickrPhoto.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class PhotoViewModel extends BaseViewModel{
  String _keyword = "";
  FlickrPhoto _flickrPhoto;
  Map<String, dynamic> _res;
  bool _hasData = false;

  String get keyword => _keyword;
  Map get res => _res;
  FlickrPhoto get flickrPhoto => _flickrPhoto;
  bool get hasData => _hasData;

  void updateKeyword(value) {
    _keyword = value;
    notifyListeners();
  }

  Future<void> getPhotoByKeyword(value) async {
    this.updateKeyword(value);
    var client = http.Client();
    String url = "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=bed6678fa4dd799882101ebddc0e74ac&text=$_keyword&format=json&nojsoncallback=1";
    var response = await client.get(url);
    if(response.statusCode == 200){
      _res = json.decode(response.body);
      if(int.parse(_res['photos']['total']) > 0){
        _flickrPhoto = FlickrPhoto.fromMap(_res['photos']);
        _hasData = true;
      }
    }
    print(_res['photos']);
    notifyListeners();
  }
}