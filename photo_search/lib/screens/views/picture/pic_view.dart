import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'pic_viewmodel.dart';

class PhotoListView extends StatefulWidget {
  final String keyword;
  PhotoListView({Key key, @required this.keyword}) : super(key: key);
  @override
  _PhotoListViewState createState() => _PhotoListViewState(keyword: keyword);
}

class _PhotoListViewState extends State<PhotoListView> {
  final String keyword;
  _PhotoListViewState({Key key, @required this.keyword});
  @override
  initState() {
    super.initState();
    // model
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      onModelReady: (model) => model.getPhotoByKeyword(keyword),
      builder: (context, PhotoViewModel model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Từ khóa tìm kiếm: $keyword'),
          ),
          // body: Text(model.res)
          body: (model.hasData) ? GridView.count(
          crossAxisCount: 3,
          children: model.flickrPhoto.photo
              .map((p) => Center(child: Image.network(p.urlString())))
              .toList())
              :Center(
                child: Text('Không có dữ liệu', 
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
          
        );
      },
      viewModelBuilder: () => PhotoViewModel()
    );
  }
}
