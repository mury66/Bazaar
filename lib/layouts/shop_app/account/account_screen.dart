import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart ';
import 'package:hexcolor/hexcolor.dart';
import 'package:line_icons/line_icons.dart';
import 'package:task/layouts/shop_app/orders/orders_screen.dart';
import 'package:task/layouts/shop_app/profile/profile_screen.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import '../../../shared/components/components.dart';
import '../../../shared/constants/constants.dart';
import '../favourites/favourites_screen.dart';
import '../sell_product/sell_product.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class Account_Screen extends StatelessWidget {
  const Account_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> accountTiles = [
      ListTile(
          title: const Text("My Account"),
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            ShopCubit.get(context).getProfileData();
            navigateTo(context, const ProfileScreen());
          }),
      ListTile(
          title: const Text("Orders"),
          leading: const Icon(Icons.shopping_bag_outlined),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            navigateTo(context, const OrdersScreen());
          }),
      ListTile(
          title: const Text("Favorites"),
          leading: const Icon(Icons.favorite_outline_outlined),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            navigateTo(context, const FavoriteScreen());
          }),
      // ListTile(
      //     title: const Text("Language"),
      //     leading: const Icon(Icons.flag_outlined),
      //     trailing: const Icon(Icons.arrow_forward_ios),
      //     onTap: () {}),
      // ListTile(
      //     title: const Text("Country"),
      //     leading: const Icon(LineIcons.globeWithAfricaShown),
      //     trailing: const Icon(Icons.arrow_forward_ios),
      //     onTap: () {}),
      // ListTile(
      //     title: const Text("Contact Us"),
      //     leading: const Icon(Icons.local_phone_outlined),
      //     trailing: const Icon(Icons.arrow_forward_ios),
      //     onTap: () {}),
      ListTile(
          title: const Text("Sell your products"),
          leading: const Icon(Icons.sell_outlined),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            navigateTo(context, const SellProduct());
          }),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Center(
          child: Text(
            "───────────────────",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      ListTile(
          title: const Text("LOGOUT"),
          leading: const Icon(Icons.logout_outlined),
          onTap: () {
            SignOut(context);
            ShopCubit.get(context).current = 0;
            ShopCubit.get(context).homeScreenIndex = 0;
          }),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("profile")),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => accountTiles[index],
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemCount: accountTiles.length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              socialMediaIcons(
                  tapped: () {
                    launcher.launchUrl(Uri.parse("https://www.facebook.com/"),
                        mode: launcher.LaunchMode.externalApplication);
                  },
                  icon: EvaIcons.facebook,
                  backGroundColor: HexColor("#E1E1E1"),
                  iconColor: Colors.indigo),
              const SizedBox(
                width: 15,
              ),
              socialMediaIcons(
                  tapped: () {
                    launcher.launchUrl(Uri.parse("https://www.facebook.com/"),
                        mode: launcher.LaunchMode.externalApplication);
                  },
                  icon: LineIcons.whatSApp,
                  backGroundColor: HexColor("#E1E1E1"),
                  iconColor: Colors.green),
              const SizedBox(
                width: 15,
              ),
              socialMediaIcons(
                  tapped: () {
                    launcher.launchUrl(Uri.parse("https://www.facebook.com/"),
                        mode: launcher.LaunchMode.externalApplication);
                  },
                  icon: LineIcons.instagram,
                  backGroundColor: HexColor("#E1E1E1"),
                  iconColor: Colors.purple),
              const SizedBox(
                width: 15,
              ),
              socialMediaIcons(
                  tapped: () {
                    launcher.launchUrl(Uri.parse("https://www.facebook.com/"),
                        mode: launcher.LaunchMode.externalApplication);
                  },
                  icon: EvaIcons.google,
                  backGroundColor: HexColor("#E1E1E1"),
                  iconColor: Colors.redAccent),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
