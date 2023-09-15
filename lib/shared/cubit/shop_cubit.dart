import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/layouts/shop_app/categories/categories_screen.dart';
import 'package:task/layouts/shop_app/favourites/favourites_screen.dart';
import 'package:task/layouts/shop_app/products/products_screen.dart';
import 'package:task/layouts/shop_app/settings/settings_screen.dart';
import 'package:task/shared/cubit/Shop_states.dart';
import '../../layouts/shop_app/nav_screens/screens/craft_screen.dart';
import '../../network/remote/dio_helper.dart';


class ShopCubit extends Cubit<ShopStates> {
  ShopCubit(super.initialState);


  static ShopCubit get(context) => BlocProvider.of(context);

  int current = 0;

  List<BottomNavigationBarItem> bottomItems =const [
    BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home_outlined, size: 23,),
        activeIcon: Icon(Icons.home)),
    BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.messenger_outline, size: 23,),
        activeIcon: Icon(Icons.message_rounded)),
    BottomNavigationBarItem(label: 'Sell', icon: Icon(Icons.attach_money_rounded,size: 23,),
        activeIcon: Icon(Icons.attach_money_rounded)),
    BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.local_grocery_store_outlined,size:23,),
        activeIcon: Icon(Icons.local_grocery_store)),
    BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.account_circle_outlined,size: 23),
        activeIcon: Icon(Icons.account_circle_rounded)),
  ];

  List<Widget> bottomScreens = const [
    CraftScreen(),
    ProductsScreen(),
    CategoriesScreen(),
    FavouriteScreen(),
    SettingsScreen(),
  ];

  void changeIndex(int index){
    current = index;
    emit(ShopChangeBottomNavBarState());
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
