import 'package:flutter/material.dart';

import '../model/item_componet_model.dart';

// ignore: must_be_immutable
class ItemComponents extends StatelessWidget {
  ItemComponents({super.key, required this.model});
  ItemComponentModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: model.onTap,
      child: Container(
        width: 158,
        height: 250,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.7,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(model.categoryImg),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  const CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 231, 225, 225),
                      child: Icon(
                        Icons.favorite_border_sharp,
                        size: 18,
                      ))
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    Text(
                      model.categoryName,
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
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
