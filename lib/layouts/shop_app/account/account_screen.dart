import 'package:flutter/material.dart ';

import '../../../shared/constants/constants.dart';
class Account_Screen extends StatelessWidget {
  const Account_Screen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: TextButton(
      child: Text("LOG OUT"),
      onPressed: (){
        SignOut(context);
      },
    ));
  }
}
