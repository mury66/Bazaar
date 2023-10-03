import 'package:flutter/material.dart%20';
import 'package:task/shared/cubit/shop_cubit.dart';

import '../../../../../shared/components/components.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Payment"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Visa",
              ),
              Tab(
                text: "Cash",
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Total"),
                  Expanded(child: SizedBox()),
                  Text("EGP 100"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "Enter your card details",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Card Number",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Card Holder Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Expiry Date",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "CVV",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 30),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  ShopCubit.get(context).changeCartState(
                                      context: context,
                                      text: 'Sucessfuly Payment');
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    minimumSize: const Size(325, 60)),
                                child: const Text('Pay',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          const Center(
                            child: Text(
                              "Cash on delivery",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Address",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          // MaterialButton(
                          //   onPressed: () {
                          //     navigateTo(context, const PaymentScreen());
                          //   },
                          //   color: const Color(0xffFF0000),
                          //   minWidth: size.width * 0.9,
                          //   height: size.height * 0.09,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(5),
                          //   ),
                          //   child: Text(
                          //     "Submit Payment",
                          //     style: TextStyle(
                          //         color: Colors.white,
                          //         fontSize: size.width * 0.03),
                          //   ),
                          // )
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: ElevatedButton(
                                onPressed: () {
                                  ShopCubit.get(context).changeCartState(
                                      context: context,
                                      text: 'Sucessfuly Payment');
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                    minimumSize: const Size(325, 60)),
                                child: const Text('Submit Payment',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20))),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
