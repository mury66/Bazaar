
import 'package:flutter/material.dart';

import '../model/item_componet_model.dart';
import '../widgets/items_components.dart';

class AccessoriesComponentView extends StatelessWidget {
  const AccessoriesComponentView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemComponentModel> component = [
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'Accessories.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Accessories',
          categoryImg: 'accessories.png',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, mainAxisExtent: 250),
      itemBuilder: (context, index) => ItemComponents(model: component[index]),
      itemCount: component.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
