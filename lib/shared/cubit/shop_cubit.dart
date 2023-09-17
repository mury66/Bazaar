import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/shared/cubit/Shop_states.dart';
import '../../layouts/shop_app/account/account_screen.dart';
import '../../layouts/shop_app/cart/cart_screen.dart';
import '../../layouts/shop_app/chats/chats_screen.dart';
import '../../layouts/shop_app/home_screen/home_screen.dart';
import '../../models/item_model/item_componet_model.dart';
import '../../network/remote/dio_helper.dart';


class ShopCubit extends Cubit<ShopStates> {
  ShopCubit(super.initialState);


  static ShopCubit get(context) => BlocProvider.of(context);

  int current = 0;

  int homeScreenIndex = 0;

  List<IconData> bottomNavIcons = [
    Icons.home,
    Icons.message_rounded,
    Icons.shopping_cart,
    Icons.account_circle_rounded,
  ];

  // List<BottomNavigationBarItem> bottomItems =const [
  //   BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_outlined, size: 23,),
  //       activeIcon: Icon(Icons.home)),
  //   BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.messenger_outline, size: 23,),
  //       activeIcon: Icon(Icons.message_rounded)),
  //   BottomNavigationBarItem(label: 'Sell', icon: Icon(Icons.attach_money_rounded,size: 23,),
  //       activeIcon: Icon(Icons.attach_money_rounded)),
  //   BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.local_grocery_store_outlined,size:23,),
  //       activeIcon: Icon(Icons.local_grocery_store)),
  //   BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.account_circle_outlined,size: 23),
  //       activeIcon: Icon(Icons.account_circle_rounded)),
  // ];

  List<Widget> bottomScreens = const [
    HomeScreen(),
    ChatsScreen(),
    CartScreen(),
    Account_Screen(),
  ];

  void changeIndex(int index){
    current = index;
    emit(ShopChangeBottomNavBarState());
  }

  void changeCats(int index){
    homeScreenIndex = index;
    emit(ShopChangeCatState());
  }

  void changeFavState(ItemComponentModel model){
    model.isFav=!model.isFav;
    emit(ChangefavState());

  }
  void getSearch(String value){
      // emit(NewsGetSearchLoadingState());
      DioHelper.getData(url: "v2/everything", query: {
        "q": value,
        "apiKey": "099e9c9aaac14711aefccd39ade69a28",
      }).then((value) {
        // emit(NewsGetSearchSuccessState());
      }).catchError((error) {
        print(error.toString());
        // emit(NewsGetSearchErrorState(error.toString()));
      });
  }
}
