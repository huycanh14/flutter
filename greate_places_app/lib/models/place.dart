import 'dart:io';
import 'package:flutter/foundation.dart';

class PlaceLoction {
  final double latitude;
  final double longitude;
  final String address;

  PlaceLoction({
    @required this.latitude,
    @required this.longitude,
    @required this.address
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLoction locations;
  final File images;

  Place({
    @required this.id,
    @required this.title,
    @required this.locations,
    @required this.images,
  });
}
