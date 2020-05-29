
import 'package:flutter/material.dart';
import 'package:lab4_3/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context,HomeViewModel model, child) => Scaffold(
        appBar: AppBar(title: Text('Kiến trúc ứng dụng MVVM')),
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed:(){
            //Gọi phương thức của ViewModel
            model.updateTitle();
          }

        ),
      ),
      viewModelBuilder: () => HomeViewModel()
    );
  }
}