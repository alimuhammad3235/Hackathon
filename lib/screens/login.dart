import 'package:eapp/screens/awal.dart';
import 'package:eapp/screens/signup.dart';
import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/screens/Navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: editemail.text,
        password: editpass.text,
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHome()));
    } on FirebaseAuthException catch (e) {
      print("eroor hai");
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
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
                      MaterialPageRoute(builder: ((context) => StartPg())));
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
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Stylecolor.bgColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Masukan NISN dan password untuk\nmemulai belajar sekarang",
                      style: TextStyle(
                          color: Stylecolor.bgColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Username/ Email",
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
                    hintText: 'Masukkan Password',
                    hintStyle: TextStyle(color: Stylecolor.bgColor1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Password",
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
                    hintText: 'Masukkan Password',
                    hintStyle: TextStyle(color: Stylecolor.bgColor1),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySignUp()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Lupa password",
                          style: TextStyle(
                              color: Stylecolor.bgColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500))),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  await login(context);
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
                          fontWeight: FontWeight.w500),
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
