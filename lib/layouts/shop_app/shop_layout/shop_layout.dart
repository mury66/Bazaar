import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/layouts/shop_app/search/search_screen.dart';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/cubit/Shop_states.dart';
import 'package:task/shared/cubit/shop_cubit.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
      listener:(context,state)=>{} ,
      builder: (context,state)
      {
        var cubit = ShopCubit.get(context);
        return  Scaffold(
          // appBar: AppBar(title:Center(child: const Text("Bazaar")),
          // leading: IconButton(
          //   onPressed: (){navigateAndFinish(context,ShopLayout());}
          //   ,icon: Icon(Icons.arrow_back_ios,color: Colors.black87,),
          // ),
          // actions: [
          //   IconButton(onPressed:(){
          //     navigateTo(context,SearchScreen());
          //   },
          //       icon: const Icon(Icons.search))
          // ],),
          body: cubit.bottomScreens[cubit.current],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: cubit.current,
            items: cubit.bottomItems,
            onTap: (index){
              cubit.changeIndex(index);
            },
          ),
          );
            },
    );
  }
}
