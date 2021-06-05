import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:petmedia_scanner/models.dart';
import 'package:http_parser/http_parser.dart';
import 'package:dio/dio.dart';
class ScannerServices {

  String _breedname;



  Future postData(File url) async {

    // Dio dio = new Dio();


    var request = http.MultipartRequest("POST", Uri.parse('http://10.0.2.2:8000/api/scanner/scan'));
    request.files.add(await http.MultipartFile.fromPath('image', url.path));
    var streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
  //   FormData formData = new FormData.fromMap({
  //     "image": await MultipartFile.fromFile(url.path, filename: url.path)
  //   });
  //   final response = await dio.post('http://10.0.2.2:8000/api/scanner/scan', data: formData);
    print (response.body);
    _breedname = response.body;
    return _breedname;



  }


  String getResponse() {
    return _breedname;
  }

  set breedname(dynamic value) {
    _breedname = value;
  }
}
