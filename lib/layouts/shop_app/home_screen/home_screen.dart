import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/categories/categories_list_model.dart';
import '../../../models/item_model/item_componet_model.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/cubit/Shop_states.dart';
import '../../../shared/cubit/shop_cubit.dart';
import '../details/product_details.dart';

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
              title: craft[0].title,
              categoryName: craft[0].categoryName,
              image: craft[0].image,
              locaion: craft[0].locaion,
              ownerName: craft[0].ownerName,
              price: craft[0].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: craft[0],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: craft[1].title,
              categoryName: craft[1].categoryName,
              image: craft[1].image,
              locaion: craft[1].locaion,
              ownerName: craft[1].ownerName,
              price: craft[1].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: craft[1],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: craft[2].title,
              categoryName: craft[2].categoryName,
              image: craft[2].image,
              locaion: craft[2].locaion,
              ownerName: craft[2].ownerName,
              price: craft[2].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: craft[2],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: craft[3].title,
              categoryName: craft[3].categoryName,
              image: craft[3].image,
              locaion: craft[3].locaion,
              ownerName: craft[3].ownerName,
              price: craft[3].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: craft[3],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: craft[4].title,
              categoryName: craft[4].categoryName,
              image: craft[4].image,
              locaion: craft[4].locaion,
              ownerName: craft[4].ownerName,
              price: craft[4].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: craft[4],
                    rate: 3,
                  ),
                );
              }),
        ];
        List<ItemComponentModel> painting = [
          ItemComponentModel(
              title: paint[0].categoryName,
              categoryName: paint[0].categoryName,
              image: paint[0].image,
              locaion: paint[0].locaion,
              ownerName: paint[0].ownerName,
              price: paint[0].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: paint[0],
                    rate: 5,
                  ),
                );
              }),
          ItemComponentModel(
              title: paint[1].categoryName,
              categoryName: paint[1].categoryName,
              image: paint[1].image,
              locaion: paint[1].locaion,
              ownerName: paint[1].ownerName,
              price: paint[1].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: paint[1],
                    rate: 5,
                  ),
                );
              }),
          ItemComponentModel(
              title: paint[2].categoryName,
              categoryName: paint[2].categoryName,
              image: paint[2].image,
              locaion: paint[2].locaion,
              ownerName: paint[2].ownerName,
              price: paint[2].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: paint[2],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: paint[3].title,
              categoryName: paint[3].categoryName,
              image: paint[3].image,
              locaion: paint[3].locaion,
              ownerName: paint[3].ownerName,
              price: paint[3].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: paint[3],
                    rate: 4,
                  ),
                );
              }),
        ];
        List<ItemComponentModel> accessories = [
          ItemComponentModel(
              title: accessory[0].title,
              categoryName: accessory[0].categoryName,
              image: accessory[0].image,
              locaion: accessory[0].locaion,
              ownerName: accessory[0].ownerName,
              price: accessory[0].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: accessory[0],
                    rate: 4,
                  ),
                );
              }),
          ItemComponentModel(
              title: accessory[1].title,
              categoryName: accessory[1].categoryName,
              image: accessory[1].image,
              locaion: accessory[1].locaion,
              ownerName: accessory[1].ownerName,
              price: accessory[1].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: accessory[1],
                    rate: 2,
                  ),
                );
              }),
          ItemComponentModel(
              categoryName: accessory[2].categoryName,
              title: accessory[2].title,
              image: accessory[2].image,
              locaion: accessory[2].locaion,
              ownerName: accessory[2].ownerName,
              price: accessory[2].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: accessory[2],
                    rate: 3,
                  ),
                );
              }),
        ];
        List<ItemComponentModel> sculpture = [
          ItemComponentModel(
              title: sculptures[0].title,
              categoryName: sculptures[0].categoryName,
              image: sculptures[0].image,
              locaion: sculptures[0].locaion,
              ownerName: sculptures[0].ownerName,
              price: sculptures[0].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: sculptures[0],
                    rate: 5,
                  ),
                );
              }),
          ItemComponentModel(
              title: sculptures[1].title,
              categoryName: sculptures[1].categoryName,
              image: sculptures[1].image,
              locaion: sculptures[1].locaion,
              ownerName: sculptures[1].ownerName,
              price: sculptures[1].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: sculptures[1],
                    rate: 3,
                  ),
                );
              }),
          ItemComponentModel(
              title: sculptures[2].title,
              categoryName: sculptures[2].categoryName,
              image: sculptures[2].image,
              locaion: sculptures[2].locaion,
              ownerName: sculptures[2].ownerName,
              price: sculptures[2].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: sculptures[2],
                    rate: 4,
                  ),
                );
              }),
          ItemComponentModel(
              title: sculptures[3].title,
              categoryName: sculptures[3].categoryName,
              image: sculptures[3].image,
              locaion: sculptures[3].locaion,
              ownerName: sculptures[3].ownerName,
              price: sculptures[3].price,
              onTap: () {
                navigateTo(
                  context,
                  ProductDetails(
                    model: sculptures[3],
                    rate: 3,
                  ),
                );
              }),
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
          appBar: defaultAppBar(context),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                    height: 150, child: categoryItemBuilder(category, context)),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 0,
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
