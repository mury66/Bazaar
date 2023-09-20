import 'package:task/layouts/shop_app/login_register/log_in/login_screen.dart';
import 'package:task/shared/components/components.dart';

import '../../models/item_model/item_componet_model.dart';
import '../../network/local/cache_helper.dart';

void SignOut(context) {
  CacheHelper.removeData(key: "token").then((value) {
    if (value) {
      navigateAndFinish(context, LogInScreen());
    }
  });
}

List<ItemComponentModel> paint = [
  ItemComponentModel(
      categoryImg: 'assets/images/painting/starrynight.jpg',
      categoryName: 'Starry Night',
      ownerName: 'Youssef',
      locaion: 'Downtown - Cairo',
      publisedAt: '5 days',
      price: 135,
      material: 'Colors, Paper, Bord',
      onTap: () {}),
  ItemComponentModel(
    categoryImg: 'assets/images/painting/monalisa.jpg',
    categoryName: 'Monalisa ',
    ownerName: 'Amer',
    locaion: 'Maadi - Cairo',
    publisedAt: '2 days',
    price: 120,
    material: 'Colors, Paper, Bord',
    onTap: () {},
  ),
  ItemComponentModel(
      categoryImg: 'assets/images/painting/freedom.jpg',
      categoryName: 'Freedom',
      ownerName: 'Yomna',
      locaion: '6th of October',
      publisedAt: '2 days',
      price: 80.5,
      material: 'Colors, Paper, Bord',
      onTap: () {}),
  ItemComponentModel(
      categoryImg: 'assets/images/painting/sunshine.jpg',
      categoryName: 'Sunshine',
      ownerName: 'Gana',
      locaion: 'Faysl - Giza',
      publisedAt: '1 week',
      price: 65,
      material: 'Colors, Paper, Bord',
      onTap: () {}),
];

List<ItemComponentModel> accessory = [
  ItemComponentModel(
      categoryImg: 'assets/images/accessories/asnyal.jpg',
      categoryName: 'Ansyal',
      ownerName: 'Reem',
      locaion: 'Tanta',
      publisedAt: '1 day',
      price: 25,
      material: 'String, Jewelry, Bronz',
      onTap: () {}),
  ItemComponentModel(
    categoryImg: 'assets/images/accessories/nicklaus.jpg',
    categoryName: 'Nicklaus ',
    ownerName: 'Farah',
    locaion: 'Sohag',
    publisedAt: '2 days',
    price: 60,
    material: 'String, Jewelry',
    onTap: () {},
  ),
  ItemComponentModel(
      categoryImg: 'assets/images/accessories/asnyal.jpg',
      categoryName: 'Seedbed',
      ownerName: 'Yomna',
      locaion: '6th of October',
      publisedAt: '2 days',
      price: 80.5,
      material: 'String, Jewelry, Bronz',
      onTap: () {}),
];

List<ItemComponentModel> sculptures = [
  ItemComponentModel(
      categoryImg: 'assets/images/sculpture/geekstatue.jpg',
      categoryName: 'Geek statue',
      ownerName: 'Omar',
      locaion: 'Alexandria',
      publisedAt: '2 weeks',
      price: 240,
      material: 'Clay, Colors',
      onTap: () {}),
  ItemComponentModel(
    categoryImg: 'assets/images/sculpture/beauty.jpg',
    categoryName: 'Beauty ',
    ownerName: 'Farah',
    locaion: 'Downtown',
    publisedAt: '5 days',
    price: 185,
    material: 'Clay, Colors',
    onTap: () {},
  ),
  ItemComponentModel(
      categoryImg: 'assets/images/sculpture/bloop.jpg',
      categoryName: 'Bloop',
      ownerName: 'Ali',
      locaion: 'Aswan',
      publisedAt: '20 days',
      price: 145.3,
      material: 'Clay, Colors',
      onTap: () {}),
  ItemComponentModel(
      categoryImg: 'assets/images/sculpture/sketchVII.jpg',
      categoryName: 'Sketch VII',
      ownerName: 'Eman',
      locaion: 'Shoubra',
      publisedAt: '2 days',
      price: 100,
      material: 'Clay, Colors',
      onTap: () {})
];

List<ItemComponentModel> craft = [
  ItemComponentModel(
      categoryImg: 'assets/images/craft/walltablo.png',
      categoryName: 'Wall Tablo',
      ownerName: 'Youssef',
      locaion: 'Downtown - Cairo',
      publisedAt: '5 days',
      price: 50.6,
      material: 'Fabric thread, Wooden board, Nails',
      onTap: () {}),
  ItemComponentModel(
    categoryImg: 'assets/images/craft/walltablo2.png',
    categoryName: 'Pillow Cover ',
    ownerName: 'Amer',
    locaion: 'Maadi - Cairo',
    publisedAt: '2 days',
    price: 35,
    material: 'Fabric , Color thread',
    onTap: () {},
  ),
  ItemComponentModel(
      categoryImg: 'assets/images/craft/kidToy.jpg',
      categoryName: 'Kid Toy',
      ownerName: 'Yomna',
      locaion: '6th of October',
      publisedAt: '2 days',
      price: 42.5,
      material: 'Pumpkin, Sponge, Fabric',
      onTap: () {}),
  ItemComponentModel(
      categoryImg: 'assets/images/craft/photoFrame.jpg',
      categoryName: 'Photo Frame',
      ownerName: 'Gana',
      locaion: 'Faysl - Giza',
      publisedAt: '1 week',
      price: 68.3,
      material: 'Wooden board, Nails, Paper',
      onTap: () {}),
  ItemComponentModel(
      categoryImg: 'assets/images/craft/wallDecoration.jpg',
      categoryName: 'Wall Decoration',
      ownerName: 'Eman',
      locaion: 'Shoubra - Cairo',
      publisedAt: '13 days',
      price: 40,
      material: 'Colors, Paper, Flowes ',
      onTap: () {})
];
