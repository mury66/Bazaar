import 'package:flutter/material.dart';

import '../../../../shared/components/components.dart';
import '../../search/search_screen.dart';
import '../../shop_layout/shop_layout.dart';
import '../model/item_componet_model.dart';
import '../view/category_view.dart';
import '../widgets/header.dart';
import '../widgets/items_components.dart';
import '../widgets/search_bar.dart';

class PaintingScreen extends StatelessWidget {
  const PaintingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemComponentModel> component = [
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
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(context),
        body: SingleChildScrollView(
          child: Column(children: [
            const SearchWidget(),
            const SizedBox(height: 150, child: CategoryView()),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 20, mainAxisExtent: 250),
              itemBuilder: (context, index) =>
                  ItemComponents(model: component[index]),
              itemCount: component.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            )
          ]),
        ),
      ),
    );
  }
}
