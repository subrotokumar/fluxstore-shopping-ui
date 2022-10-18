import 'package:flutter/cupertino.dart';
import 'package:fluxstore/services/functions/product_api.dart';
import 'package:fluxstore/services/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> list = [];
  bool isLoading = false;

  Future<void> getData() async {
    isLoading = true;
    notifyListeners();
    list = (await ProductAPI().getProduct());
    isLoading = false;
    notifyListeners();
  }
}
