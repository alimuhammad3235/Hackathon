import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eapp/screens/propage2.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/pro_list.dart';
import 'package:eapp/screens/Navbar.dart';
import 'package:eapp/widgets/custom.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:flutter/material.dart';

class MyPrdts extends StatefulWidget {

  MyPrdts({super.key});

  @override
  State<MyPrdts> createState() => _MyPrdtsState();
}

class _MyPrdtsState extends State<MyPrdts> {
  CollectionReference products =
      FirebaseFirestore.instance.collection("products");

  getdata() async {
    return products.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Row(
                children: [
                  Image.asset(ImagePath.Img2),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "Plantify",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 115),
                    child: Row(
                      children: [
                        Stack(children: [
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
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Image.asset(ImagePath.Img4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Stylecolor.bgColor2,
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      ImagePath.Img5,
                      width: 400,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: Text(
                            "There’s a Plant\nfor everyone",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Text(
                            "Get your 1st plant\n@ 40% off",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_outlined,
                            color: Stylecolor.bgColor),
                        suffixIcon: Icon(Icons.qr_code_scanner),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(width: 1, color: Color(0xff002140)),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Color(0xff002140)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      width: 50,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xff002140), width: 1),
                      ),
                      child: Image.asset(ImagePath.Img7),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Pick",
                                style: TextStyle(
                                    color: Stylecolor.bgColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 5),
                            child: Container(
                              width: 40,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Stylecolor.bgColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Indoor",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "outdoor",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Seeds",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Planters",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            FutureBuilder(
              future: getdata(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProPage2(name:snapshot.data.docs[index]["name"],price:snapshot.data.docs[index]["price"],)));
                          },
                          child: ProductsContainer(
                            img: Product[index]["bgImage"],
                            forimage: Product[index]["image"],
                            name: snapshot.data.docs[index]["name"],
                            price: snapshot.data.docs[index]["price"],
                          ),
                        );
                      }));
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            // ListView.builder(
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemCount: Product.length,
            //     itemBuilder: ((context, index) {
            //       return GestureDetector(
            //         onTap: () {
            //           Navigator.push(context,
            //               MaterialPageRoute(builder: (context) => ProPage2()));
            //         },
            //         child: ProductsContainer(
            //             img: Product[index]["bgImage"],
            //             forimage: Product[index]["image"],
            //             name: Product[index]["name"],
            //             price: Product[index]["price"]),
            //       );
            //     })),
            Stack(children: [
              Image.asset(ImagePath.pro),
              Padding(
                padding: const EdgeInsets.only(left: 150, top: 80),
                child: Image.asset(ImagePath.play),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                "Caring for plants should be fun. That’s why we\noffer 1-on-1 virtual consultations from the comfort\nof your home or office. ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 40,
                  height: 5,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Plant a Life",
                    style: TextStyle(
                        color: Color(0xff002140),
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Live amongst Living",
                    style: TextStyle(
                        color: Color(0xff002140),
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Spread the joy",
                    style: TextStyle(
                        color: Color(0xff002140),
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
