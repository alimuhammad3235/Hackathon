import 'package:eapp/screens/mybag.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProPage2 extends StatefulWidget {
  const ProPage2({super.key});

  @override
  State<ProPage2> createState() => _ProPage2State();
}

class _ProPage2State extends State<ProPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
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
                            "Watermelon\nPeperomia",
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
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "\$350",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
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
                              "5``h",
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
                                                  builder: ((context) =>
                                                      MyBag()))));
                                        },
                                        child: Image.asset(ImagePath.Img9)),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
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
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Overview",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImagePath.drop),
                  Column(
                    children: [
                      Text(
                        "250ml",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "WATER",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Image.asset(
                    ImagePath.sun,
                  ),
                  Column(
                    children: [
                      Text(
                        "30-40%",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "LIGHT",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Image.asset(ImagePath.dot),
                  Column(
                    children: [
                      Text(
                        "250gm",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "FERTILIZER",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Plant Bio",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "No green thumb required to keep our artificial\nwatermelon peperomia plant looking lively and\nlush anywhere you place it.",
                  style: TextStyle(fontSize: 15, color: Color(0xff002140)),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  children: [
                    Stack(children: [
                      Image.asset(ImagePath.img1),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Air Purifier",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Peperomia",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$400",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(Icons.favorite),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Image.asset(
                          ImagePath.basek,
                        ),
                      ),
                    ]),
                    Stack(children: [
                      Image.asset(
                        ImagePath.img1,
                        color: Color(0xffE5F0A1),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Air Purifier",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Peperomia",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$400",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(Icons.favorite),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Image.asset(
                          ImagePath.basek,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.width * 0.6,
                  color: Color(0xfffbf8dc),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text("That Very plant?",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff002140),
                                )),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Just Scan and the AI\nwill know exactly",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff002140)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 120,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff002140), width: 1),
                                  color: Color(0xfffbf8dc),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Scan Now",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Stylecolor.bgColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 70),
                child: Image.asset(
                  "assets/images/sss.png",
                  width: 130,
                ),
              ),
            ]),
          ],
        ),
      ]),
    );
  }
}
