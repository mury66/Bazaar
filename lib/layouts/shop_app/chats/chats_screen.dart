import 'package:flutter/material.dart ';
import 'package:task/shared/components/components.dart';
import 'package:task/shared/constants/constants.dart';
import 'package:task/shared/themes/themes.dart';
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Chats")),),
      body: ListView.separated(
          itemBuilder:(context,index)=>chats[index],
          separatorBuilder:(context,index)=>SizedBox(height: 10,),
          itemCount: chats.length),
    );
  }
}
