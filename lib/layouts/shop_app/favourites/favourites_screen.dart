import 'package:flutter/material.dart ';
import '../../../models/cart_model/cart_model.dart';
import '../../../shared/components/components.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<CartModel> component = [
      CartModel(
        image:"assets/images/painting/freedom.jpg" ,
        title: "freedom",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
      CartModel(
        image:"assets/images/painting/starrynight.jpg" ,
        title: "starrynight",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
      CartModel(
        image:"assets/images/sculpture/beauty.jpg" ,
        title: "beauty",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
      CartModel(
        image:"assets/images/sculpture/bloop.jpg" ,
        title: "bloob",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
      CartModel(
        image:"assets/images/sculpture/sketchVII.jpg" ,
        title: "sketchVII",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
        centerTitle: true,

      ) ,
      body: ListView.builder(
        itemBuilder: (context, index) => FavouriteItem(model: component[index]),
        itemCount: component.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
      ),
    );


  }
}