import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/bazaar.jpg'),
            radius: 25,
          ),
          SizedBox(width: 70),
          Text(
            'downtown 48st',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
