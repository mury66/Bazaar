import 'package:flutter/material.dart%20';
import 'package:task/models/item_model/item_componet_model.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import 'package:task/shared/details/dynamic_rating.dart';
import 'package:task/shared/details/rating_bar.dart';

class ProductFeedback extends StatelessWidget {
  ItemComponentModel model;

  ProductFeedback({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Feedback'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: 210,
                  height: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(model.categoryImg),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'How would you rate it?',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                DynamicStarRating(),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  endIndent: 50,
                  indent: 50,
                  thickness: 0.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  decoration: InputDecoration(
                    label: Text('Write your feedbck'),
                    contentPadding: EdgeInsets.only(bottom: 35),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      ShopCubit.get(context).changeCartState(
                          context: context,
                          text: 'Your feedback was submited!');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFA67C52),
                        fixedSize: const Size(360, 55)),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
