import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/categories/categories_list_model.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/cubit/Shop_states.dart';
import '../../../shared/cubit/shop_cubit.dart';
import '../nav_screens/widgets/search_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
        listener: (context,state)=>{},
        builder: (context,state){

          var cubit = ShopCubit.get(context);

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

          TextEditingController searchController = TextEditingController();

          var list;

          cubit.homeScreenIndex == 0 ? list = crafts :
          cubit.homeScreenIndex == 1 ? list = painting :
          cubit.homeScreenIndex == 2 ? list = accessories : list = sculpture ;

          return Scaffold(
            appBar: defaultAppBar(context),
            body: SingleChildScrollView(
              child: Column(
              children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: defaultinputform(
                    submitted:(value){},
                    type: TextInputType.text,
                    prefix: Icons.search,
                    controller: searchController,
                    hint: "search"
                ),
              ),
              SizedBox(height: 150, child: categoryItemBuilder(category,context)),
              GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10,crossAxisSpacing: 10, mainAxisExtent: 250),
              itemBuilder: (context, index) =>
              productItem(list[index]),
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
