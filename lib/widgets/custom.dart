import 'package:eapp/utils/imagespath.dart';
import 'package:flutter/material.dart';

class ProductsContainer extends StatelessWidget {
  final String img, forimage, name;
  final int price;

  ProductsContainer(
      {Key? key,
      required this.img,
      required this.forimage,
      required this.name,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 78.0, top: 40),
          child: Image.asset(
            img,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50.0, top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Air Purifier",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Text(name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
              Row(
                children: [
                  Text(price.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                  SizedBox(
                    width: 30,
                    height: 110,
                  ),
                  Icon(Icons.favorite),
                  SizedBox(
                    width: 30,
                    height: 110,
                  ),
                  Image.asset(
                    "assets/images/co2.png",
                    scale: 1.7,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                forimage,
                scale: 4,
              )),
        ),
      ],
    );
  }
}
