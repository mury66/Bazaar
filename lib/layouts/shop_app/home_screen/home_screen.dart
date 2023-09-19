import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/categories/categories_list_model.dart';
import '../../../models/item_model/item_componet_model.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/cubit/Shop_states.dart';
import '../../../shared/cubit/shop_cubit.dart';
import '../../../shared/details/product_details.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
        listener: (context,state)=>{},
        builder: (context,state){

          var cubit = ShopCubit.get(context);

          List<ItemComponentModel> crafts = [
            ItemComponentModel(
                categoryName: craft[0].categoryName,
                categoryImg: craft[0].categoryImg,
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
                categoryName: craft[1].categoryName,
                categoryImg: craft[1].categoryImg,
                locaion: craft[1].locaion,
                ownerName: craft[1].ownerName,
                price: craft[1].price,
                onTap: () {
                  navigateTo(
                    context,
                    ProductDetails(
                      model: craft[1],
                      rate: 2,
                    ),
                  );
                }),
            ItemComponentModel(
                categoryName: craft[2].categoryName,
                categoryImg: craft[2].categoryImg,
                locaion: craft[2].locaion,
                ownerName: craft[2].ownerName,
                price: craft[2].price,
                onTap: () {
                  navigateTo(
                    context,
                    ProductDetails(
                      model: craft[2],
                      rate: 5,
                    ),
                  );
                }),
            ItemComponentModel(
                categoryName: craft[3].categoryName,
                categoryImg: craft[3].categoryImg,
                locaion: craft[3].locaion,
                ownerName: craft[3].ownerName,
                price: craft[3].price,
                onTap: () {
                  navigateTo(
                    context,
                    ProductDetails(
                      model: craft[3],
                      rate: 5,
                    ),
                  );
                }),
            ItemComponentModel(
                categoryName: craft[4].categoryName,
                categoryImg: craft[4].categoryImg,
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
                categoryName: paint[0].categoryName,
                categoryImg: paint[0].categoryImg,
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
                categoryName: paint[1].categoryName,
                categoryImg: paint[1].categoryImg,
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
                categoryName: paint[2].categoryName,
                categoryImg: paint[2].categoryImg,
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
                categoryName: paint[3].categoryName,
                categoryImg: paint[3].categoryImg,
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
                categoryName: accessory[0].categoryName,
                categoryImg: accessory[0].categoryImg,
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
                categoryName: accessory[1].categoryName,
                categoryImg: accessory[1].categoryImg,
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
                categoryImg: accessory[2].categoryImg,
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
                categoryName: sculptures[0].categoryName,
                categoryImg: sculptures[0].categoryImg,
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
                categoryName: sculptures[1].categoryName,
                categoryImg: sculptures[1].categoryImg,
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
                categoryName: sculptures[2].categoryName,
                categoryImg: sculptures[2].categoryImg,
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
                categoryName: sculptures[3].categoryName,
                categoryImg: sculptures[3].categoryImg,
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
                onTap: (){
                  cubit.changeCats(0);
                }
            ),
            CategoriesModel(
                categoryName: 'Painting',
                img: 'assets/images/painting.png',
                onTap: (){
                  cubit.changeCats(1);
                }

            ),
            CategoriesModel(
                categoryName: 'Accessories ',
                img: 'assets/images/accessories.png',
                onTap: (){
                  cubit.changeCats(2);
                }
            ),
            CategoriesModel(
                categoryName: 'Sculpture ',
                img: 'assets/images/sculpture.jpg',
                onTap: (){
                  cubit.changeCats(3);
                }
            ),
          ];


          var list;

          cubit.homeScreenIndex == 0 ? list = crafts :
          cubit.homeScreenIndex == 1 ? list = painting :
          cubit.homeScreenIndex == 2 ? list = accessories : list = sculpture ;

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
              children: [
              SizedBox(height: 150, child: categoryItemBuilder(category,context)),
              GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10, mainAxisExtent: 250),
              itemBuilder: (context, index) =>
              productItem(list[index],context),
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
