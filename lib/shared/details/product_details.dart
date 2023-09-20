import 'package:flutter/material.dart';
import 'package:task/models/item_model/item_componet_model.dart';
import 'package:task/shared/details/favorite_icon.dart';
import 'package:task/shared/details/rating_bar.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.model, required this.rate});
  ItemComponentModel model;
  double rate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Product Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              )),
          centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(model.categoryImg),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(5)),
                ),
                const FavoriteIcon()
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              '${model.categoryName}, Made by: ${model.ownerName}',
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Location: ${model.locaion}',
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'Publised at: ${model.publisedAt} ago',
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            //Fabric thread, Wooden board, Nails
            Text(
              'Materials: ${model.material}',
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Product Rate',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 28,
                ),
                RatingBar(rating: rate),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'EGP ${model.price}',
              style: const TextStyle(
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.grey,
              thickness: 0.8,
              height: 24,
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Sucessfuly Added Your to cart'),
                    backgroundColor: Colors.green));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, fixedSize: const Size(340, 50)),
              child: const Text('Add to cart',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
