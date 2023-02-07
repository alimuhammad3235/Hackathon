import 'package:eapp/screens/login.dart';
import 'package:eapp/screens/propage.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/screens/Navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MySignUp extends StatefulWidget {
  const MySignUp({super.key});

  @override
  State<MySignUp> createState() => _MySignUpState();
}

class _MySignUpState extends State<MySignUp> {
  signup() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: editemail.text,
      password: editpass.text,
    );
  }

  TextEditingController editemail = TextEditingController();
  TextEditingController editpass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyLogin()));
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
                        border:
                            Border.all(color: Stylecolor.bgColor1, width: 1),
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
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Row(
                  children: [
                    Image.asset(ImagePath.Img2),
                    const Padding(
                      padding: EdgeInsets.only(left: 17),
                      child: Text(
                        "PLANTIFY",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Stylecolor.bgColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Masukan No. Handphone Anda dan tunggu kode \nautentik dikirimkan",
                      style: TextStyle(
                          color: Stylecolor.bgColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("NISN",
                        style: TextStyle(
                            color: Stylecolor.bgColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: editemail,
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.lock_outline, color: Stylecolor.bgColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffE6E8EB)),
                    ),
                    hintText: 'Nomor NISN',
                    hintStyle: TextStyle(color: Stylecolor.bgColor1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("NISN",
                        style: TextStyle(
                            color: Stylecolor.bgColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: editpass,
                  decoration: InputDecoration(
                    prefixIcon:
                        Icon(Icons.lock_outline, color: Stylecolor.bgColor),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xffE6E8EB)),
                    ),
                    hintText: 'Nomor NISN',
                    hintStyle: TextStyle(color: Stylecolor.bgColor1),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await signup();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHome()));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Stylecolor.bgColor,
                    ),
                    child: const Center(
                        child: Text(
                      "MULAI BELAJAR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
