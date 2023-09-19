import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart ';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icons.dart';
import 'package:task/network/remote/end_points/end_points.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';

class Account_Screen extends StatelessWidget {
  const Account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<dynamic> accountTiles = [
      ListTile(
          title: Text("My Account"),
          leading: Icon(Icons.person),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Orders"),
          leading: Icon(Icons.shopping_bag_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Favorites"),
          leading: Icon(Icons.favorite_outline_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Language"),
          leading: Icon(Icons.flag_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Country"),
          leading: Icon(LineIcons.globeWithAfricaShown),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
          title: Text("Contact Us"),
          leading: Icon(Icons.local_phone_outlined),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {}),
      ListTile(
    title: Text("Sell your products"),
    leading: Icon(Icons.sell_outlined),
    trailing: Icon(Icons.arrow_forward_ios),
    onTap: () {}),
      const Center(
        child: Text(
          "─────────────────────────────────",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ),
      ListTile(
          title: Text("LOGOUT"),
          leading: Icon(Icons.logout_outlined),
          onTap: () {
            SignOut(context);
            ShopCubit.get(context).current=0;
            ShopCubit.get(context).homeScreenIndex=0;
          }),

    ];

    return Column(
      children: [
        const SizedBox(height: 10,),
        Expanded(
          child: ListView.separated(
            itemBuilder:(context,index)=>accountTiles[index],
            separatorBuilder:(context,index)=>SizedBox(height: 5,),
            itemCount:accountTiles.length ,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialMediaIcons(
              tapped: (){},
              icon: EvaIcons.facebook,
              backGroundColor: HexColor("#E1E1E1"),
              iconColor: Colors.indigo
            ),
            const SizedBox(
              width: 15,),
            socialMediaIcons(
                tapped: (){},
                icon: LineIcons.whatSApp,
                backGroundColor: HexColor("#E1E1E1"),
                iconColor: Colors.green
            ),
            const SizedBox(
              width: 15,),
            socialMediaIcons(
                tapped: (){},
                icon: LineIcons.instagram,
                backGroundColor: HexColor("#E1E1E1"),
                iconColor: Colors.purple
            ),
            const SizedBox(
              width: 15,),
            socialMediaIcons(
                tapped: (){},
                icon: EvaIcons.google,
                backGroundColor: HexColor("#E1E1E1"),
                iconColor: Colors.redAccent
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),


      ],
    );


  }
}