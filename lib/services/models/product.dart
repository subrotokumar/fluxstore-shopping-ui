import 'package:flutter/foundation.dart';

class Product {
  int id;
  String title;
  double price;
  String description;
  String category;
  String imageUrl;
  double rating;
  double count;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.count,
  });

  factory Product.fromJson(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      title: map['title'],
      price: map['price'],
      description: map['description'],
      category: map['category'],
      imageUrl: map['imageUrl'],
      rating: map['rating'],
      count: map['count'],
    );
  }
}
