import 'package:flutter/material.dart';

class Product{
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.image, 
    required this.title, 
    required this.description, 
    required this.price, 
    required this.size, 
    required this.id, 
    required this.color
  });
}

String dummyText = "This is an online shop with the best products";

List<Product> products = [
    Product(
      id:1,
      title: "Office code",
      price: 24,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)
    ),
    
    Product(
      id:1,
      title: "Belt bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)
    ),

    Product(
      id:1,
      title: "Bag number 3",
      price: 24,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)
    ),

        Product(
      id:1,
      title: "Bag with accesorios",
      price: 24,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)
    ),

        Product(
      id:1,
      title: "Bag with cats",
      price: 24,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)
    ),

        Product(
      id:1,
      title: "Bag with dogs",
      price: 24,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE)
    ),


  ];