import 'package:flutter/material.dart';

class ItemComponentModel {
  String categoryName;
  String categoryImg;
  String ownerName;
  String locaion;
  bool isFav = false;
  double price;
  Function()? onTap;
  String? material;
  String? publisedAt;
  ItemComponentModel(
      {required this.categoryName,
      required this.categoryImg,
      required this.ownerName,
      required this.locaion,
      required this.price,
      @required this.onTap,
      @required this.material,
      @required this.publisedAt});
}
