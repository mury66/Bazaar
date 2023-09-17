import 'package:flutter/material.dart ';

import '../../../shared/components/components.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: defaultinputform(
            submitted:(value){},
            type: TextInputType.text,
            prefix: Icons.search,
            controller: searchController,
            hint: "search"
        ),
      ),
    );
  }
}
