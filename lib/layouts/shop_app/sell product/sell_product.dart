import 'package:flutter/material.dart%20';
import 'package:task/layouts/shop_app/sell%20product/category_dropdwon_list.dart';
import 'package:task/shared/cubit/shop_cubit.dart';

class SellProduct extends StatelessWidget {
  const SellProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sell Your Product',
            style: TextStyle(fontSize: 20, color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 15),
            const Text(
              'Upload the product image:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xB2000000),
                      minimumSize: const Size(250, 60)),
                  child: const Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(height: 25),
            const Text(
              'Chose the product category:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const DropdownWithImage(),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter the product name',
                    label: const Text('Product Name')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter the product material',
                    label: const Text('Product Material')),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    hintText: 'Enter the product price',
                    label: const Text('Price')),
              ),
            ),
            // textField(context: context,hintText: 'Enter the product price',label:'Price' ),
            const SizedBox(
              height: 22,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    ShopCubit.get(context).changeCartState(
                        context: context,
                        text: 'Sucessfuly Added Your Product');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(325, 60)),
                  child: const Text('Sell Product',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
