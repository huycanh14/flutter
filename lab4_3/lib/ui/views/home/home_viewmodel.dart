import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel{
  String _title = "ViewModel";
  String get title => _title;

  int _count = 0;
  int get count => _count;

  void updateTitle() {
    _count += 1;
    _title = "Giá trị của counter là $_count";

    //Thông báo có sự thay đổi (thông báo cho view biết)
    notifyListeners();
  }
}