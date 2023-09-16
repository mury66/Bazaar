import 'package:flutter/material.dart';
import 'package:task/shared/components/components.dart';

class SearchWidget extends StatelessWidget {
 const  SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController search = new TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: defaultinputform(
          submitted: (value){},
          type: TextInputType.text,
          prefix: Icons.search,
          controller: search,
          hint: "search"
      ),
    );
  }
}
