import 'package:flutter/material.dart ';
import '../../../models/cart_model/cart_model.dart';
import '../payment/payment_screen.dart';
import '../../../shared/components/components.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    List<CartModel> component = [
      CartModel(
        image:"assets/images/sculpture/beauty.jpg" ,
        title: "beauty",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:499.0 ,
      ),
      CartModel(
        image:"assets/images/sculpture/bloop.jpg" ,
        title: "bloop",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:250.0 ,
      ),
      CartModel(
        image:"assets/images/craft/kidToy.jpg" ,
        title: "kidToy",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,

      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => CartItem(model: component[index]),
              itemCount: component.length,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: defaultButton(text: "continue to payment", pressed: (){
                navigateTo(context, const PaymentScreen());
              }),
            ),

          ],
        ),
      ),
    );


  }
}