import 'package:flutter/cupertino.dart';
import 'package:task/layouts/shop_app/login_register/log_in/login_screen.dart';
import 'package:task/shared/components/components.dart';

import '../../models/item_model/item_componet_model.dart';
import '../../network/local/cache_helper.dart';
import '../cubit/shop_cubit.dart';

void SignOut(context) {
  CacheHelper.removeData(key: "token").then((value)
  {
    if(value)
      {
        navigateAndFinish(context,LogInScreen());
      }
  });
}

String token = "";

List<ItemComponentModel> craft = [
  ItemComponentModel(
      title: "Wall Tablo",
      categoryName: "crafts",
      image: "assets/images/craft/walltablo.png",
      locaion: "Downtown - Cairo",
      ownerName: "Youssef",
      price: 300,
      material: "Fabric thread, Wooden board, Nails",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Pillow Cover",
      categoryName: "crafts",
      image: 'assets/images/craft/walltablo2.png',
      locaion: "Maadi - Cairo",
      ownerName: "Amer",
      price: 250,
      material: "Fabric , Color thread",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Pillow Cover",
      categoryName: "crafts",
      image: 'assets/images/craft/kidToy.jpg',
      locaion: "6th of October",
      ownerName: "Yomna",
      price: 185,
      material: "Pumpkin, Sponge, Fabric",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Photo Frame",
      categoryName: "crafts",
      image: 'assets/images/craft/photoFrame.jpg',
      locaion: "Faysl - Giza",
      ownerName: "Gana",
      price: 199,
      material: "Wooden board, Nails, Paper",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Wall Decoration",
      categoryName: "crafts",
      image: 'assets/images/craft/wallDecoration.jpg',
      locaion: "Shoubra - Cairo",
      ownerName: "Eman",
      price: 320,
      material: "Colors, Paper, Flowes",
      onTap: () {}
  ),
];
List<ItemComponentModel> paint = [
  ItemComponentModel(
      title: "Starry Night",
      categoryName: "paint",
      image: "assets/images/painting/starrynight.jpg",
      locaion: "Downtown - Cairo",
      ownerName: "Youssef",
      publisedAt: "october 22",
      price: 270,
      material: "Colors, Paper, Bord",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Monalisa",
      categoryName: "paint",
      image: "assets/images/painting/monalisa.jpg",
      locaion: "maadi - Cairo",
      ownerName: "Amer",
      publisedAt: "october 22",
      price: 620,
      material: "Colors, Paper, Bord",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Freedom",
      categoryName: "paint",
      image: "assets/images/painting/freedom.jpg",
      locaion: "maadi - Cairo",
      ownerName: "Yomna",
      publisedAt: "october 22",
      price: 400,
      material: "Colors, Paper, Bord",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Sunshine",
      categoryName: "paint",
      image: "assets/images/painting/sunshine.jpg",
      locaion: "Faysl - Giza",
      ownerName: "Gana",
      publisedAt: "october 22",
      price: 350,
      material: "Colors, Paper, Bord",
      onTap: () {}
  ),
];
List<ItemComponentModel> accessory = [
  ItemComponentModel(
      title: "Ansyal",
      categoryName: "accessory",
      image: "assets/images/accessories/asnyal.jpg",
      locaion: "Tanta",
      ownerName: "maryam",
      publisedAt: "october 22",
      price: 290,
      material: "String, Jewelry, Bronz",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Nicklaus",
      categoryName: "accessory",
      image: "assets/images/accessories/nicklaus.jpg",
      locaion: "Sohag",
      ownerName: "Farah",
      publisedAt: "october 22",
      price: 305,
      material: "String, Jewelry",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Seedbed",
      categoryName: "accessory",
      image: "assets/images/accessories/nicklaus.jpg",
      locaion: "Sohag",
      ownerName: "Farah",
      publisedAt: "october 22",
      price: 305,
      material: "String, Jewelry",
      onTap: () {}
  ),
];
List<ItemComponentModel> sculptures = [
  ItemComponentModel(
      title: "Geek statue",
      categoryName: "sculptures",
      image: "assets/images/sculpture/geekstatue.jpg",
      locaion: "Tanta",
      ownerName: "Omar",
      publisedAt: "october 22",
      price: 700,
      material: "Clay, Colors",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Beauty",
      categoryName: "sculptures",
      image: "assets/images/sculpture/beauty.jpg",
      locaion: "Downtown",
      ownerName: "Mo'taz",
      publisedAt: "october 22",
      price: 540,
      material: "Clay, Colors",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Bloop",
      categoryName: "sculptures",
      image: "assets/images/sculpture/bloop.jpg",
      locaion: "Aswan",
      ownerName: "medhat",
      publisedAt: "october 22",
      price: 400,
      material: "Clay, Colors",
      onTap: () {}
  ),
  ItemComponentModel(
      title: "Sketch VII",
      categoryName: "sculptures",
      image: "assets/images/sculpture/sketchVII.jpg",
      locaion: "Shoubra",
      ownerName: "ahmed",
      publisedAt: "october 22",
      price: 250,
      material: "Clay, Colors",
      onTap: () {}
  ),
];


List<Widget> chats =[
  chatItem(name: "yousef", chat: "how much is this"),
  chatItem(name: "abdelrahman", chat: "how much is this"),
  chatItem(name: "ganna", chat: "how much is this"),
  chatItem(name: "youmna", chat: "how much is this"),
  chatItem(name: "seba'y", chat: "how much is this"),
  chatItem(name: "maryam", chat: "how much is this"),
  chatItem(name: "seif", chat: "how much is this"),
  chatItem(name: "bahgat", chat: "how much is this"),
  chatItem(name: "zakaria", chat: "how much is this"),
  chatItem(name: "bosy", chat: "how much is this"),
  chatItem(name: "ahmed", chat: "how much is this"),
];