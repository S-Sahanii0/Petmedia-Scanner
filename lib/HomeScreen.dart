import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9EEF8),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),
              AppHeader(),
              SizedBox(
                height: 30.0,
              ),
              SelectImage(),
              Text(
                "Select an image to scan",
                style: GoogleFonts.sulphurPoint(
                    textStyle: TextStyle(fontSize: 20)),
              ),
              SizedBox(height: 75),
              FlatButton(
                color: Color(0xFF536895),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                onPressed: () {},
                child: Text(
                  'Scan',
                  style: GoogleFonts.waitingForTheSunrise(
                      textStyle: TextStyle(fontSize: 22, color: Colors.white)),
                ),
              ),
              Text(
                "Breed Name: Golden Retreiver",
                style: GoogleFonts.sulphurPoint(
                    textStyle: TextStyle(
                  color: Color(0xFF536895),
                  fontSize: 18,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 12.0,),
        Text(
          "Petmedia Scanner",
          style: GoogleFonts.sulphurPoint(
              textStyle: TextStyle(fontSize: 30)),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(image: AssetImage('assets/image 2.png')),
        ),
      ],
    );
  }
}


class SelectImage extends StatefulWidget {
  @override
  _SelectImageState createState() => _SelectImageState();
}

class _SelectImageState extends State<SelectImage> {
  File _image;

  ImagePicker imagePicker = ImagePicker();

  Future getImage() async {
    final pickedFile = await imagePicker.getImage(source:ImageSource.camera);

    setState(() {
      if (pickedFile != null){
        _image = File(pickedFile.path);
        print(_image);
      } else{
        print('No image selected');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        getImage();
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 24.0),
        child: Container(
            child: _image == null? Image(
                image: AssetImage('assets/image 3.png')

            ) : Image.file(_image
            , height: 200, width: 500,)
        ),

      ),
    );
  }
}
