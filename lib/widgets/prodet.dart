import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eapp/model/products.dart';
import 'package:eapp/screens/mybag.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/utils/pro_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Prodet extends StatefulWidget {
  String name, size;
  int price;
  Prodet(
      {super.key, required this.name, required this.price, required this.size});
  @override
  State<Prodet> createState() => _ProdetState();
}

List<Map> addtoBag1 = [];

class _ProdetState extends State<Prodet> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          Image.asset(ImagePath.ui3),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
            child: Row(
              children: [
                Image.asset(ImagePath.Img2),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Plantify",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Row(children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Stack(children: [
                        Icon(
                          Icons.notifications_outlined,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18, top: 8),
                          child: Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Stylecolor.bgColor,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(ImagePath.Img4),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Air Purifier",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w700),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        ImagePath.Img8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Center(child: Icon(Icons.favorite_outline)),
                              Center(child: Text("4.8"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w700),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Image.asset(
                    ImagePath.ui2,
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 210),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PRICE",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.price.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "SIZE",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.size,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        (MaterialPageRoute(
                                          builder: ((context) => MyBag(
                                                name: widget.name,
                                                price: widget.price,
                                              )),
                                        )),
                                      );
                                      addtoBag1.add({"name": widget.name,"price":widget.price});
                                      // addtoBag1.add(widget.price.toString());
                                      print(addtoBag1);
                                    },
                                    child: Image.asset(ImagePath.Img9)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Icon(Icons.favorite_outline),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ],
    );
  }
}
