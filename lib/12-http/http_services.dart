import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:learnig_flutter_series/12-http/user_maolde.dart';

class ApiServices {
  /// Método para obtener los usuarios desde la API usando el paquete http
  static Future<List<dynamic>> fetchUserWithHttp() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body) as List<dynamic>;
    } else {
      throw Exception('Error al cargar los usuarios');
    }
  }

  /// Método para obtener los usuarios desde la API usando el paquete http con su mdoelo
  static Future<List<Users>> fetchUserWithHttpWithModel() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);

      return jsonList.map((json) => Users.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar los usuarios');
    }
  }

  /// Método para obtener los usuarios desde la API usando el paquete dio
  static Future<List<dynamic>> fectchUserWithDio() async {
    final dio = Dio();

    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');

    if (response.statusCode == 200) {
      return response.data as List<dynamic>;
    } else {
      throw Exception('Error al cargar los usuarios');
    }
  }
}
