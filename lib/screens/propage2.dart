import 'package:eapp/screens/mybag.dart';
import 'package:eapp/screens/propage.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/utils/pro_list.dart';
import 'package:eapp/widgets/prodet.dart';
import 'package:flutter/material.dart';

class ProPage2 extends StatelessWidget {
  String name;
  int price;
  ProPage2({super.key, required this.name, required this.price});

  @override
  List<Map> Addtobag = [];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: detail.length,
                itemBuilder: ((context, index) {
                  return Prodet(
                      name: name, price: price, size: detail[index]["size"]);
                })),
            const Padding(
              padding: EdgeInsets.only(left: 25),
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
                    children: const [
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
