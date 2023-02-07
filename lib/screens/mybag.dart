import 'package:eapp/screens/menu1.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/utils/pro_list.dart';
import 'package:eapp/widgets/list_bag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SafeArea(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(children: [
                Image.asset(ImagePath.Img2),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Plantify",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(ImagePath.Img4),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Bag",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Stylecolor.bgColor),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: probag.length,
                itemBuilder: ((context, index) {
                  return MyBag2(
                      name: probag[index]["name"],
                      image: probag[index]["image"],
                      price: probag[index]["price"]);
                })),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Stylecolor.bgColor,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(
                  "Order above ₹1200 to get\nfree delivery, Shop for more ₹190",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                leading: Image.asset(ImagePath.dev),
                trailing: Text("\$80",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImagePath.div),
                  Text("Apply Coupon",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  Container(
                    width: 120,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Stylecolor.bgColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      )),
                  Text("\$1090",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Saved for later",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Stylecolor.bgColor)),
                  Text("6 Items",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Stylecolor.bgColor)),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Large Snake Zylanica",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
              subtitle: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff002140)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                        child: Text(
                      "-",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff002140)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Center(
                        child: Text(
                      "+",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.delete_outline,
                    color: Stylecolor.bgColor,
                  ),
                ],
              ),
              leading: Image.asset(
                "assets/images/basket.png",
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(ImagePath.icon2),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "\$600",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mymenu()));
              }),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: Stylecolor.bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Checkout",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      Text("\$1090",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
