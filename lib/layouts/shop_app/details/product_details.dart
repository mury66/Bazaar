import 'package:flutter/material.dart';
import 'package:task/models/item_model/item_componet_model.dart';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/details/feedback.dart';
import 'package:task/shared/details/rating_bar.dart';
import 'package:task/layouts/shop_app/details/rating_bar.dart';

import '../../../shared/cubit/shop_cubit.dart';

// ignore: must_be_immutable
class ProductDetails extends StatefulWidget {
  ProductDetails({super.key, required this.model, required this.rate});
  ItemComponentModel model;
  double rate = 0;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: SingleChildScrollView(
        child: Padding(
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
                            image: AssetImage(widget.model.categoryImg),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          ShopCubit.get(context)
                              .changeFavState(widget.model, context);
                        });
                      },
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor:
                            const Color.fromARGB(255, 231, 225, 225),
                        child: Icon(Icons.favorite,
                            color:
                                widget.model.isFav ? Colors.red : Colors.grey),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                '${widget.model.categoryName}, Made by: ${widget.model.ownerName}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Location: ${widget.model.locaion}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Publised at: ${widget.model.publisedAt} ago',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              //Fabric thread, Wooden board, Nails
              Text(
                'Materials: ${widget.model.material}',
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
                  RatingBar(rating: widget.rate),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'EGP ${widget.model.price}',
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
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
                  ShopCubit.get(context).changeCartState(
                      context: context, text: 'Sucessfuly Added Your to cart');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(340, 50)),
                child: const Text('Add to cart',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  navigateTo(context, ProductFeedback(model: widget.model));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 95, 95, 95),
                    fixedSize: const Size(340, 50)),
                child: const Text('Feedback',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
