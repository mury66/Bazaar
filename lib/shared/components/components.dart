// ignore_for_file: non_constant_identifier_names, unnecessary_const
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/layouts/shop_app/cart/cart_screen.dart';
import 'package:task/shared/cubit/shop_cubit.dart';

import '../../layouts/shop_app/search/search_screen.dart';
import '../../layouts/shop_app/shop_layout/shop_layout.dart';
import '../../models/cart_model/cart_model.dart';
import '../../models/categories/categories_list_model.dart';
import '../../models/item_model/item_componet_model.dart';
import '../themes/themes.dart';

AppBar defaultAppBar(BuildContext context) => AppBar(
      elevation: 0,
      title: const Center(child: Text("6th of october")),
      leading: MaterialButton(
          child: const Image(
              width: 100, image: AssetImage("assets/images/bazaar.png")),
          onPressed: () {
            navigateAndFinish(context, const ShopLayout());
          }),
      actions: [
        IconButton(
            onPressed: () {
              navigateTo(context, const SearchScreen());
            },
            icon: const Icon(
              Icons.search,
              color: Colors.black87,
            ))
      ],
    );

Widget textField(
    {required context, required String hintText, required String label}) {
  TextField(
    decoration: InputDecoration(
        alignLabelWithHint: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        hintText: hintText,
        label: Text(label)),
  );
  return textField(context: context, hintText: hintText, label: label);
}

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );

void showSnackBar(
    {required context,
    required ContentType type,
    required String message,
    required String title}) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.fixed,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title,
      message: message,
      contentType: type,
    ),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

Widget defaultinputform({
  context,
  IconData? sufix,
  bool isPassword = false,
  bool isClickable = true,
  Function()? suffixOnPressed,
  void Function(String)? onChanged,
  String? Function(String?)? validator,
  Function()? tapped,
  required Function(String) submitted,
  required TextInputType type,
  required IconData prefix,
  required TextEditingController controller,
  required String hint,
}) =>
    TextFormField(
        style: const TextStyle(
          fontSize: 15,
        ),
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        validator: validator,
        onFieldSubmitted: submitted,
        onChanged: onChanged,
        onTap: tapped,
        cursorColor: const Color.fromARGB(255, 0, 0, 0),
        decoration: InputDecoration(
            filled: true,
            fillColor: HexColor("#E1E1E1"),
            hintText: hint,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 119, 119, 119),
            ),
            iconColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: Color.fromARGB(1, 255, 255, 255), //(225,225,225,1.000)

                width: 2.0,
              ),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: PrimaryColour),
              borderRadius: BorderRadius.circular(12),
            ),
            prefixIcon: Icon(prefix, size: 20, color: HexColor("#5A5A5A")),
            suffixIcon: IconButton(
              icon: Icon(sufix, size: 20, color: HexColor("#5A5A5A")),
              onPressed: suffixOnPressed,
            )));

Widget defaultButton(
        {required String text,
        required void Function() pressed,
        bool isUpper = false}) =>
    Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: PrimaryColour, borderRadius: BorderRadius.circular(12)),
      child: MaterialButton(
        onPressed: pressed,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );

Widget socialMediaIcons(
        {required IconData icon,
        required Color iconColor,
        required Color backGroundColor,
        required Function()? tapped}) =>
    InkWell(
      onTap: tapped,
      child: Container(
          width: 63,
          height: 63,
          decoration: BoxDecoration(
              color: backGroundColor, borderRadius: BorderRadius.circular(12)),
          child: Icon(
            icon,
            color: iconColor,
            size: 40,
          )),
    );

Widget categoryItem(CategoriesModel model, index, context) => InkWell(
      onTap: model.onTap,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 18, bottom: 5, right: 22, left: 22),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                model.img,
              ),
              radius: 35,
            ),
          ),
          Text(
            model.categoryName,
            style: const TextStyle(
                fontSize: 17, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          index == ShopCubit.get(context).homeScreenIndex
              ? Container(
                  width: 35,
                  height: 3,
                  color: PrimaryColour,
                )
              : Container()
        ],
      ),
    );

Widget categoryItemBuilder(List<CategoriesModel> categories, context) =>
    ListView.builder(
      itemBuilder: (context, index) =>
          categoryItem(categories[index], index, context),
      itemCount: categories.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
    );

Widget productItem(ItemComponentModel model, context) => InkWell(
      onTap: model.onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Container(
          width: double.infinity,
          height: 300,
          // margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(model.image),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5)),
                ),
                const SizedBox(
                  height: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Made by: ${model.ownerName}',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      model.locaion,
                      style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'EGP ${model.price} ',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: PrimaryColour),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );

Widget chatItem({required String name,required String chat})=>Padding(
  padding: const EdgeInsets.all(10.0),
  child: Row(
    children: [
      CircleAvatar(
        backgroundColor: PrimaryColour,
        radius: 35,
        child: Icon(Icons.person,color: Colors.white,),
      ),
      SizedBox(width: 15,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 3,),
          Text(chat)
        ],
      )
    ],
  ),
);

class CartItem extends StatelessWidget {
  CartModel model;

  CartItem({super.key ,required this.model});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;



    return Container(
      height: size.height*0.19,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1,color:Colors.grey),
      ),
      margin: const EdgeInsets.only(bottom: 5,top: 5,left: 25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
            width: 150,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                    image: AssetImage(model.image),
                ),
                borderRadius: BorderRadius.zero),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                model.description,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Text(
                model.location,
                style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                model.date,
                style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'EGP ${model.price} ',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: PrimaryColour),
                ),
              )


            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Card(
              elevation: 0,
              //color: Color(0xffEA4335).withOpacity(0.2),

              margin: const EdgeInsets.only(right: 5),

              child: IconButton(icon:Icon(Icons.delete_outlined,color: Colors.red,size: 25,),onPressed: (){},), ),
          ),


        ],


      ),
    );



  }
}

class FavouriteItem extends StatelessWidget {
  CartModel model;

  FavouriteItem({super.key ,required this.model});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;



    return Container(
      height: size.height*0.19,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1,color:Colors.grey),
      ),
      margin: const EdgeInsets.only(bottom: 5,top: 5,left: 25,right: 25),


      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
            width: 150,
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(model.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.zero),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                model.description,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Text(
                model.location,
                style: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),
              Text(
                model.date,
                style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w300,
                    color: Colors.black),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'EGP ${model.price} ',
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              )


            ],
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 5),
            child: IconButton(icon:Icon(Icons.favorite,color: Colors.red),onPressed: (){

            },),
          ),


        ],


      ),
    );
  }
}
