import 'package:flutter/material.dart';
import 'package:task/shared/cubit/Appcubit.dart';
import '../../../../shared/cubit/shop_cubit.dart';
import '../model/categories_list_model.dart';
import '../widgets/categories_list.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesModel> category = [
      CategoriesModel(
          categoryName: 'Craft',
          img: 'assets/images/craft.png',
          onTap: (){
            ShopCubit.get(context).changeCats(0);
          }
      ),
      CategoriesModel(
          categoryName: 'Painting',
          img: 'assets/images/painting.png',
          onTap: (){
            ShopCubit.get(context).changeCats(1);
          }

          ),
      CategoriesModel(
          categoryName: 'Accessories ',
          img: 'assets/images/accessories.png',
          onTap: (){
            ShopCubit.get(context).changeCats(2);
          }
),
      CategoriesModel(
          categoryName: 'Sculpture ',
          img: 'assets/images/sculpture.jpg',
          onTap: (){
            ShopCubit.get(context)..changeCats(3);
          }
      ),
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
