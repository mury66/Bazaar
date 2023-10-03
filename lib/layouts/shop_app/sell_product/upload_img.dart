import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  late File? image;
  final imagePicker = ImagePicker();

  uploadImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: uploadImage,
            style: ElevatedButton.styleFrom(
                backgroundColor: HexColor("#E1E1E1"),
                minimumSize: const Size(250, 60)),
            child: const Icon(
              Icons.add_a_photo,
              color: Colors.grey,
            )),
        // image == null
        //     ? const Text('There is no image')
        //     : SizedBox(
        //         width: 250,
        //         height: 100,
        //         child: Image.file(image!),
        //       )
      ],
    );
  }
}
