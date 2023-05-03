import 'dart:convert';

import 'package:http/http.dart' as http;

import 'User.dart';
 class  UserApi {
   static Future<User>  fetchUser() async {
    final response = await http
        .get(Uri.parse('https://dummyjson.com/carts/1'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return User.fromJson(jsonDecode(response.body).carts);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
   static Future<List<User>>  fetchUsers() async {
     final response = await http
         .get(Uri.parse('https://dummyjson.com/carts'));
     List<User> users = [];

     if (response.statusCode == 200) {
       // If the server did return a 200 OK response,
       // then parse the JSON.
       var jsonData=jsonDecode(response.body);
       var carts=jsonData["carts"];

       for(var i = 0 ; i < carts.length;i++) {
         users.add(User.fromJson(carts[i]));

       }
       print(users);
       return users ;
     } else {
       // If the server did not return a 200 OK response,
       // then throw an exception.
       throw Exception('Failed to load album');
     }
   }
}

