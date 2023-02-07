import 'package:eapp/utils/colors.dart';
import 'package:eapp/utils/imagespath.dart';
import 'package:eapp/utils/pro_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBag2 extends StatefulWidget {
  final name, image, price;
  MyBag2(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  State<MyBag2> createState() => _MyBag2State();
}

class _MyBag2State extends State<MyBag2> {
  @override
  num _count = 1;

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
      subtitle: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _count = _count - 1;
              });
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff002140)),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                "-",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "$_count",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _count++;
              });
            },
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff002140)),
                  borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                "+",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              )),
            ),
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
        widget.image,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(ImagePath.icon2),
          SizedBox(
            width: 10,
          ),
          Text(
            (widget.price * _count).toString(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
