import 'dart:collection';

import 'package:eapp/screens/menu1.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => Mymenu())));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Stylecolor.bgColor1, width: 1),
                  ),
                  child: Icon(
                    Icons.chevron_left,
                    size: 30,
                    color: Stylecolor.bgColor,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Stack(children: [Image.asset(ImagePath.cch)]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Order ",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Stylecolor.bgColor),
            ),
          ),
          Text(
            "Recieved ",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w800,
                color: Stylecolor.bgColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              "Order ID : #293092309 ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Image.asset(
              ImagePath.Img1,
              color: Stylecolor.bgColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Stylecolor.bgColor,
              ),
              child: const Center(
                  child: Text(
                "KIRIM",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
