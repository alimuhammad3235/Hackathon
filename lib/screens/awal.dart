import 'package:eapp/screens/login.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:flutter/material.dart';

class StartPg extends StatelessWidget {
  const StartPg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.60,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Stylecolor.bgColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Image.asset(
                    ImagePath.Img1,
                    width: 250,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Plantify",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "GET READY\nBE HIGYENIC",
                  style: TextStyle(
                      color: Stylecolor.bgColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator",
                  style: TextStyle(
                      color: Stylecolor.bgColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => MyLogin())));
            },
            child: Padding(
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
                  "MASUK",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
