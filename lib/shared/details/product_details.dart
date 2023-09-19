import 'package:flutter/material.dart';
import 'package:task/shared/details/favorite_icon.dart';
import 'package:task/shared/details/rating_bar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
                      image: const DecorationImage(
                          image: AssetImage('images/walltablo.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5)),
                ),
                const FavoriteIcon()
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'wall tablo, Made by: thread',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Location: Maade - Cairo',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              'Publised at: 5 days ao',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              'Materials: Fabric thread, Wooden board, Nails',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Product Rate',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 28,
                ),
                RatingBar(rating: 4.5),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              'EGP 49.99',
              style: TextStyle(
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
