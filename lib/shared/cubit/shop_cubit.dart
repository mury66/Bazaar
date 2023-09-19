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

  List<Widget> bottomScreens = const [
    HomeScreen(),
    ChatsScreen(),
    CartScreen(),
    Account_Screen(),
  ];

  void changeIndex(int index) {
    current = index;
    emit(ShopChangeBottomNavBarState());
  }

  void changeCats(int index) {
    homeScreenIndex = index;
    emit(ShopChangeCatState());
  }

  void changeFavState(ItemComponentModel model,context) {
    model.isFav = !model.isFav;
    model.isFav
        ? ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Added to your favorites'),
        backgroundColor: Colors.green))
        : ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 1),
        content: Text('Removed from your favorites'),
        backgroundColor: Colors.red));
    emit(ChangeFavState());
  }
    void changeCartState(context) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(seconds: 1),
          content: Text('Sucessfuly Added Your to cart'),
          backgroundColor: Colors.green));
      emit(ChangeCartState());
    }
    void getSearch(String value) {
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
