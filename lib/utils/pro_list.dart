import 'package:flutter/animation.dart';

List<dynamic> Product = [
  {
    "image": "assets/images/c1.png",
    "name": "Peperomia",
    "price": 400,
    "bgImage": "assets/images/w1.png",
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/c2.png",
    "name": "Watermelon",
    "price": 450,
    "bgImage": "assets/images/w2.png",
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/c3.png",
    "name": "Croton Petra",
    "price": 380,
    "bgImage": "assets/images/w1.png",
    "color": Color(0xfffff3cc),
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/c4.png",
    "name": "Bird's Nest fern",
    "price": 280,
    "bgImage": "assets/images/w3.png",
    "color": Color(0xff9dd7c0),
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
  {
    "image": "assets/images/c4.png",
    "name": "Bird's Nest fern",
    "price": 280,
    "bgImage": "assets/images/w3.png",
    "color": Color(0xfffff3cc),
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
  },
];
List<dynamic> probag = [
  {
    "name": "Watermelon Peperomia",
    "image": "assets/images/basket.png",
    "price": 350
  },
  {
    "name": "Peperomia Obtusfolia",
    "image": "assets/images/basket2.png",
    "price": 400
  },
  {
    "name": "Peperomia Obtusfolia",
    "image": "assets/images/basket.png",
    "price": 260
  },
];
class see {

   static double _count = 1;
  static check() {
    _count = _count - 1;
  }
 static checkadd() {
    _count = _count + 1;
  }
}