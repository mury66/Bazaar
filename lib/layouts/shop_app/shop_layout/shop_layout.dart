import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/shared/cubit/Shop_states.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import 'package:flutter/services.dart';
import 'package:task/shared/themes/themes.dart';

import '../../../shared/components/components.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ShopCubit,ShopStates>(
      listener:(context,state)=>{} ,
      builder: (context,state)
      {
        var cubit = ShopCubit.get(context);
        Size size = MediaQuery.of(context).size;
        return  Scaffold(
          body: cubit.bottomScreens[cubit.current],
          bottomNavigationBar: Container(
            height: size.width * .155,
            child: ListView.builder(
              itemCount: cubit.bottomNavIcons.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  cubit.changeIndex(index);
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: size.width * .014),
                    Icon(cubit.bottomNavIcons[index],
                        size: size.width * .076, color: index!=cubit.current? Colors.grey: PrimaryColour),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        top: index == cubit.current ? 0 : size.width * .029,
                        right: size.width * .0422,
                        left: size.width * .0422,
                      ),
                      width: size.width * .153,
                      height: index == cubit.current ? size.width * .014 : 0,
                      decoration: BoxDecoration(
                        color: PrimaryColour,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   currentIndex: cubit.current,
          //   items: cubit.bottomItems,
          //   onTap: (index){
          //     cubit.changeIndex(index);
          //   },
          // ),
          );
            },
    );
  }
}
