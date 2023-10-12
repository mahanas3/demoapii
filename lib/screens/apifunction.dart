import 'dart:convert';

import 'package:demoapii/model_class/classmodel.dart';
import 'package:http/http.dart' as http;
class Apicalling{
  Future<List<Students>> getApi()async{
    final response=await http.get(Uri.parse('https://fakestoreapi.com/products'));
   // print(response);
    List jsonData=jsonDecode(response.body);
    //print(jsonData);
    List<Students> studentsList =
    jsonData.map((data) => Students.fromJson(data)).toList();
    return studentsList;
  }
}