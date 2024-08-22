import 'package:flutter/material.dart';

import '../combonent/conbonent_buttome.dart';

class BaseNumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Numbers",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 45),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/numbersApp.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black12,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < num.length; i++)
                  CustomNews(
                    width: 300,
                    height: 200,
                    urlImage: num[i]["img"]!,
                    title: num[i]["Text"]!,
                    onTap: () {},
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Map<String, dynamic>> num = [
    {
      "Text": "One",
      "img": "assets/images/1.png",
    },
    {
      "Text": "two",
      "img": "assets/images/2.png",
    },
    {
      "Text": "three",
      "img": "assets/images/3.png",
    },
    {
      "Text": "four",
      "img": "assets/images/4.png",
    },
    {
      "Text": "five",
      "img": "assets/images/5.png",
    },
    {
      "Text": "six",
      "img": "assets/images/6.png",
    },
    {
      "Text": "seven",
      "img": "assets/images/7.png",
    },
    {
      "Text": "eight",
      "img": "assets/images/8.png",
    },
    {
      "Text": "nine",
      "img": "assets/images/9.png",
    },
    {
      "Text": "ten",
      "img": "assets/images/10.png",
    },
  ];
}
