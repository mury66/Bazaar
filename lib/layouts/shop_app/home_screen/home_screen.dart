import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../../../shared/cubit/Shop_states.dart';
import '../../../shared/cubit/shop_cubit.dart';
import '../nav_screens/screens/category_view.dart';
import '../nav_screens/widgets/items_components.dart';
import '../nav_screens/widgets/search_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
        listener: (context,state)=>{},
        builder: (context,state){
          var cubit = ShopCubit.get(context);

          var list;

          cubit.homeScreenIndex == 0 ? list = crafts :
          cubit.homeScreenIndex == 1 ? list = painting :
          cubit.homeScreenIndex == 2 ? list = accessories : list = sculpture ;

          return Scaffold(
            appBar: defaultAppBar(context),
            body: SingleChildScrollView(
              child: Column(
              children: [
              const SearchWidget(),
              const SizedBox(height: 150, child: CategoryView()),
              GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, mainAxisExtent: 250),
              itemBuilder: (context, index) =>
              ItemComponents(model: list[index]),
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
