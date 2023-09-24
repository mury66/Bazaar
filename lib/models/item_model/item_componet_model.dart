import 'package:flutter/material.dart';
class ItemComponentModel {
  String title;
  String categoryName;
  String image;
  String ownerName;
  String locaion;
  bool isFav = false;
  bool isInCart = false;
  double price;
  Function()? onTap;
  String? material;
  String? publisedAt = "october 22";
  ItemComponentModel(
      {
        required this.title,
        required this.categoryName,
        required this.image,
        required this.ownerName,
        required this.locaion,
        required this.price,
        @required this.onTap,
        @required this.material,
        @required this.publisedAt});
}
