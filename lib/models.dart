import 'dart:io';

class Scan {
  final File url;

  Scan(this.url);



  Map<String , dynamic> toJson(){
    return{
      "image": this.url,
    };
  }

}