// ignore_for_file: non_constant_identifier_names, unnecessary_const

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/shared/cubit/shop_cubit.dart';

import '../themes/themes.dart';

void navigateTo(context,widget)
  =>Navigator.push(context,MaterialPageRoute(
      builder:(context)=>widget)
  );

void navigateAndFinish(context,widget)
  =>Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(
    builder:(context)=>widget),
    (route) => false,
);

void showSnackBar({
  required context,required ContentType type ,
  required String message, required String title}
    ) {
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
  context,IconData? sufix,
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
  required String hint,})
=>TextFormField(

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

                color: Color.fromARGB(1, 255, 255, 255),//(225,225,225,1.000)

                width: 2.0,

              ),

            ),

            border: OutlineInputBorder(

              borderSide:BorderSide(color:Colors.white),

              borderRadius: BorderRadius.circular(12),

            ),

            focusedBorder:OutlineInputBorder(

              borderSide:const BorderSide(color:PrimaryColour),

              borderRadius: BorderRadius.circular(12),

            ),

            prefixIcon: Icon(prefix,size: 20,color: HexColor("#5A5A5A")),

            suffixIcon: IconButton(

              icon: Icon(sufix,size: 20,color: HexColor("#5A5A5A")),

              onPressed: suffixOnPressed,

            )));

Widget defaultButton({
  required String text,
  required void Function() pressed,
  bool isUpper = false })
=>Container(
  width: double.infinity,
  height: 60,
  decoration: BoxDecoration(
      color: PrimaryColour,
      borderRadius: BorderRadius.circular(12)
  ),
  child: MaterialButton(
    onPressed:pressed,
    child: Text(
      isUpper? text.toUpperCase():text,style: const TextStyle(

        fontSize: 22,color: Colors.white
    ),
    ),
  ),
);

Widget buildArticleItem(article,context) => InkWell(
  onTap: (){

  },
  child:   Padding(

    padding: const EdgeInsets.all(10.0),

    child: Row(

      children: [

        Container(

          width: 120,

          height: 120 ,

          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),

              image: DecorationImage(

                  image: NetworkImage("${article["urlToImage"]}"),

                  fit:BoxFit.cover

              )

          ),



        ),

        const SizedBox(width: 20,),

        Expanded(

          child: Container(

            height: 120,

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,

              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                Expanded(

                  child: Text("${article["title"]}",

                    maxLines: 3,

                    overflow: TextOverflow.ellipsis,

                    style: Theme.of(context).textTheme.bodyLarge ,

                )),

                Text("${article["publishedAt"]}",

                  style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.grey),

                ),



              ],

            ),

          ),

        )

      ],

    ),

  ),
);

Widget articleBuilder(list,context) => ConditionalBuilder(
    condition:(list.isNotEmpty),
    builder: (context) =>ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index)=>buildArticleItem(list[index],context),
      separatorBuilder:(context,index)=>Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(height: 1,
          color: Color.fromARGB(255, 255, 214, 156),),
      ) ,
      itemCount: list.length ,
    ) ,
    fallback: (context) => const Center(
        child: CircularProgressIndicator(
          color: Color.fromARGB(255, 255, 214, 156),))
);
