import 'package:flutter/material.dart';

import '../model/categories_list_model.dart';
// ignore: must_be_immutable
class CategoriesList extends StatelessWidget {
  CategoriesModel model;
  CategoriesList({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: model.onTap,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 18, bottom: 5, right: 22, left: 22),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                model.img,
              ),
              radius: 43,
            ),
          ),
          Text(
            model.categoryName,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
