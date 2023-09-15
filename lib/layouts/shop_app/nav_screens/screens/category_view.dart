import 'package:flutter/material.dart';
import 'package:task/layouts/shop_app/nav_screens/screens/painting_screen.dart';
import 'package:task/layouts/shop_app/nav_screens/screens/sculpture_screen.dart';
import '../model/categories_list_model.dart';
import '../widgets/categories_list.dart';
import 'accessories_screen.dart';
import 'craft_screen.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> category = [
      CategoriesModel(
          categoryName: 'Craft',
          img: 'assets/images/craft.png',
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const CraftScreen()),
            );
          }),
      CategoriesModel(
          categoryName: 'Painting',
          img: 'assets/images/painting.png',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaintingScreen(),
                ));
          }),
      CategoriesModel(
          categoryName: 'Accessories ',
          img: 'assets/images/accessories.png',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AccessoriesScreen(),
                ));
          }),
      CategoriesModel(
          categoryName: 'Sculpture ',
          img: 'assets/images/sculpture.jpg',
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SculptureScreen(),
                ));
          }),
    ];

    return ListView.builder(
      itemBuilder: (context, index) => CategoriesList(model: category[index]),
      itemCount: category.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
    );
  }
}
