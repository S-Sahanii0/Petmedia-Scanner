import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE9EEF8),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),
              Row(
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
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24.0),
                child: Image(
                  image: AssetImage('assets/image 3.png'),
                ),
              ),
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
