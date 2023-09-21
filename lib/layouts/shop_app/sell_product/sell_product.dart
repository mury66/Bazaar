import 'package:flutter/material.dart%20';
import 'package:hexcolor/hexcolor.dart';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/cubit/shop_cubit.dart';
import 'category_dropdwon_list.dart';

class SellProduct extends StatelessWidget {
  const SellProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var materialController =TextEditingController();
    var priceController =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sell Your Product',
            style: TextStyle(fontSize: 20, color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Upload the product image:',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor("#E1E1E1"),
                      minimumSize: const Size(250, 60)),
                  child: const Icon(
                    Icons.add_a_photo,
                    color: Colors.grey,
                  )),
              const SizedBox(
                  height: 30),
              const Text(
                'Chose the product category:',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownWithImage(),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,10,10,0),
                      child: defaultinputform(
                          submitted:(value){},
                          type: TextInputType.text,
                          prefix: Icons.text_snippet_outlined,
                          controller: nameController,
                          hint: "product Name"
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10,10,10,0),
                      child: defaultinputform(
                          submitted:(value){},
                          type: TextInputType.text,
                          prefix: Icons.area_chart_rounded,
                          controller: materialController,
                          hint: "product Material"
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10,10,10,0),
                      child: defaultinputform(
                          submitted:(value){},
                          type: TextInputType.text,
                          prefix: Icons.monetization_on_outlined,
                          controller: nameController,
                          hint: "product Price"
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
      ),
    );
  }
}
