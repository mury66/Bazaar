import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:task/shared/components/components.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController NameController = TextEditingController();
    NameController.text= "Amer M. Ammar";
    TextEditingController EmailController = TextEditingController();
    EmailController.text= "Amer66ammar@gmail.com";
    TextEditingController PhoneController = TextEditingController();
    PhoneController.text= "01154400075";
    TextEditingController AdressController = TextEditingController();
    AdressController.text= "Giza, Haram";
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Profile")),
        actions: [
          IconButton(onPressed: (){},
              icon:Icon(Icons.check)
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(child: Icon(EvaIcons.personOutline,size: 80,color: Colors.white,),radius: 50,
          backgroundColor: Colors.grey,),
          SizedBox(
            height: 20,),
          Text(
            "Amer M. Ammar",style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 80,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                defaultinputform(
                    submitted:(value){},
                    type: TextInputType.text,
                    prefix: Icons.person_4_outlined,
                    controller:NameController,
                    hint: "name"
                ),
                SizedBox(
                  height: 20,),

                defaultinputform(
                    submitted:(value){},
                    type: TextInputType.text,
                    prefix: Icons.email_outlined,
                    controller:EmailController,
                    hint: "name"
                ),
                SizedBox(
                  height: 20,),
                defaultinputform(
                    submitted:(value){},
                    type: TextInputType.text,
                    prefix: Icons.phone_outlined,
                    controller:PhoneController,
                    hint: "name"
                ),
                SizedBox(
                  height: 20,),
                defaultinputform(
                    submitted:(value){},
                    type: TextInputType.text,
                    prefix: Icons.place_outlined,
                    controller:AdressController,
                    hint: "name"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
