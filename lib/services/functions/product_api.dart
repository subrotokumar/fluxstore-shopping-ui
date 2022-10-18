import 'dart:convert';
import 'package:fluxstore/services/models/product.dart';
import 'package:dio/dio.dart';

class ProductAPI {
  Future<List<Product>> getProduct() async {
    String endpoint = 'https://fakestoreapi.com/products';
    var response = await Dio().get(endpoint);

    var jsonData = jsonDecode(response.data);

    List<Product> list = [];
    if (jsonData["status"] == "Ok") {
      for (var element in jsonData) {
        list.add(Product.fromJson(element));
      }
    }
    return list;
  }
}
