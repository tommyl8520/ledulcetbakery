import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/IMG_1775.jpg",
      color: Colors.white),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/IMG_1684.jpg",
      color: Colors.white),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/IMG_1746.jpg",
      color: Colors.white),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/IMG_1755.jpg",
      color: Colors.white),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/IMG_1775.jpg",
      color: Colors.white),
  Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/IMG_1775.jpg",
      color: Colors.white),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
