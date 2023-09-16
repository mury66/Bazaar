import 'package:task/layouts/shop_app/log_in/login_screen.dart';
import 'package:task/shared/components/components.dart';

import '../../layouts/shop_app/nav_screens/model/item_componet_model.dart';
import '../../network/local/cache_helper.dart';

void SignOut(context)
{
  CacheHelper.removeData(key: "token").then((value)
  {
    if(value)
      {
        navigateAndFinish(context,LogInScreen());
      }
  });
}

List<ItemComponentModel> crafts = [
  ItemComponentModel(
      categoryName: 'Wall Tablo',
      categoryImg: 'assets/images/walltablo.png',
      locaion: 'Downtown - Cairo',
      ownerName: 'Youssef',
      price: 50.6,
      onTap: () {}
  ),
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
      locaion: 'Zayed - Cairo',
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

List<ItemComponentModel> accessories = [
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
  ItemComponentModel(
      categoryName: 'Accessories',
      categoryImg: 'assets/images/Accessories.png',
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
      onTap: () {}),
  ItemComponentModel(
      categoryName: 'Sculpture',
      categoryImg: 'assets/images/sculpture.jpg',
      locaion: 'Maadi - Cairo',
      ownerName: 'Saif',
      price: 45.99,
      onTap: () {}),
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


