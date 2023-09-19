import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/models/item_model/item_componet_model.dart';
import 'package:task/shared/details/product_details.dart';
import '../../../models/categories/categories_list_model.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/cubit/Shop_states.dart';
import '../../../shared/cubit/shop_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit, ShopStates>(
      listener: (context, state) => {},
      builder: (context, state) {
        var cubit = ShopCubit.get(context);

        List<ItemComponentModel> crafts = [
          ItemComponentModel(
              categoryName: 'Wall Tablo',
              categoryImg: 'assets/images/walltablo.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductDetails(),
                    ));
              }),
          ItemComponentModel(
              categoryName: 'Wall Tablo 2',
              categoryImg: 'assets/images/walltablo2.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Wall Tablo',
              categoryImg: 'assets/images/walltablo.png',
              locaion: 'Zayed - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Wall Tablo 2',
              categoryImg: 'assets/images/walltablo2.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Wall Tablo',
              categoryImg: 'assets/images/walltablo.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Wall Tablo 2',
              categoryImg: 'assets/images/walltablo2.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Wall Tablo',
              categoryImg: 'assets/images/walltablo.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Wall Tablo 2',
              categoryImg: 'assets/images/walltablo2.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
        ];

        List<ItemComponentModel> painting = [
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Painting',
              categoryImg: 'assets/images/painting.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
        ];

        List<ItemComponentModel> accessories = [
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Accessories',
              categoryImg: 'assets/images/accessories.png',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
        ];

        List<ItemComponentModel> sculpture = [
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {
                navigateTo(context, const ProductDetails());
              }),
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Downtown - Cairo',
              ownerName: 'Youssef',
              price: 50.6,
              onTap: () {}),
          ItemComponentModel(
              categoryName: 'Sculpture',
              categoryImg: 'assets/images/sculpture.jpg',
              locaion: 'Maadi - Cairo',
              ownerName: 'Saif',
              price: 45.99,
              onTap: () {}),
        ];
          
        List<CategoriesModel> category = [
          CategoriesModel(
              categoryName: 'Craft',
              img: 'assets/images/craft.png',
              onTap: () {
                cubit.changeCats(0);
              }),
          CategoriesModel(
              categoryName: 'Painting',
              img: 'assets/images/painting.png',
              onTap: () {
                cubit.changeCats(1);
              }),
          CategoriesModel(
              categoryName: 'Accessories ',
              img: 'assets/images/accessories.png',
              onTap: () {
                cubit.changeCats(2);
              }),
          CategoriesModel(
              categoryName: 'Sculpture ',
              img: 'assets/images/sculpture.jpg',
              onTap: () {
                cubit.changeCats(3);
              }),
        ];

        List<ItemComponentModel> list;

        cubit.homeScreenIndex == 0
            ? list = crafts
            : cubit.homeScreenIndex == 1
                ? list = painting
                : cubit.homeScreenIndex == 2
                    ? list = accessories
                    : list = sculpture;

        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 150, child: categoryItemBuilder(category, context)),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 250),
                  itemBuilder: (context, index) =>
                      productItem(list[index], context),
                  itemCount: list.length,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
