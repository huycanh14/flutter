import 'package:flutter/foundation.dart';
import '../models/place.dart';

class GreatePlace with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get item {
    return [..._items];
  }
}
