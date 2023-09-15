import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: const Color(0xFFE1E1E1),
          borderRadius: BorderRadius.circular(
            25,
          )),
      child: const ListTile(
        leading: Icon(Icons.search, color: Colors.black, size: 24),
        title: Text('Search',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
        trailing: Icon(
          Icons.tune,
          color: Colors.black,
          size: 24,
        ),
      ),
    );
  }
}
