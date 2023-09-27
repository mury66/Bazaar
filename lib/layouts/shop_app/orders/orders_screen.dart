import 'package:flutter/material.dart ';
import '../../../models/orders_model/orders_model.dart';

import '../../../shared/components/components.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    List<OrdersModel> component = [
      OrdersModel(
        image:"assets/images/sculpture/beauty.jpg" ,
        title: "beauty",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:499.0 ,
        status: "delivered",
        details: "rate",
      ),
      OrdersModel(
        image:"assets/images/sculpture/bloop.jpg" ,
        title: "bloop",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:250.0 ,
        status: "in progress",
        details: "cancel",
      ),
      OrdersModel(
        image:"assets/images/craft/kidToy.jpg" ,
        title: "kidToy",
        description:"made by thread" ,
        location: "maadi,cairo",
        date:"5 days ago" ,
        price:49.99 ,
        status: "in progress",
        details: "cancel",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Orders"),
        centerTitle: true,

      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => OrdersItem(model: component[index]),
              itemCount: component.length,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
            ),



          ],
        ),
      ),
    );


  }
}