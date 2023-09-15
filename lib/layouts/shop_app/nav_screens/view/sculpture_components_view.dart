import 'package:flutter/material.dart';

import '../model/item_componet_model.dart';
import '../widgets/items_components.dart';

class SculptureComponentView extends StatelessWidget {
  const SculptureComponentView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemComponentModel> component = [
      ItemComponentModel(
          categoryName: 'Sculpture.jpg',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Maadi - Cairo',
          ownerName: 'Saif',
          price: 45.99,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
          locaion: 'Downtown - Cairo',
          ownerName: 'Youssef',
          price: 50.6,
          onTap: () {}),
      ItemComponentModel(
          categoryName: 'Sculpture',
          categoryImg: 'sculpture.jpg',
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
