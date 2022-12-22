// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, sort_child_properties_last, unnecessary_import, must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';

class Item {
  String imgPath;
  double price;
  Item({required this.imgPath, required this.price});
}

class Home extends StatelessWidget {
  final List<Item> items = [
    Item(imgPath: "assets/img/Audi.png", price: 15000),
    Item(imgPath: "assets/img/car.png", price: 15000),
    Item(imgPath: "assets/img/hyundai.png", price: 15000),
    Item(imgPath: "assets/img/kia selots.png", price: 15000),
    Item(imgPath: "assets/img/Nissan.png", price: 15000),
    Item(imgPath: "assets/img/volvo.png", price: 15000),
    Item(imgPath: "assets/img/volvo.png", price: 15000),
    Item(imgPath: "assets/img/kia.png", price: 15000),
  ];

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3 / 2.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 33),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {},
                    child: GridTile(
                      child: Stack(children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.asset(items[index].imgPath)),
                        ),
                      ]),
                      footer: GridTileBar(
                        trailing: IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {},
                            icon: Icon(Icons.add)),
                        leading: Text("\$ 14,000"),
                        title: Text(
                          "",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/img/car.png"),
                            fit: BoxFit.cover),
                      ),
                      currentAccountPicture: CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage("assets/img/me.png")),
                      accountEmail: Text("Ramezemad@gmail.com"),
                      accountName: Text("Ramez Emad",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          )),
                    ),
                    ListTile(
                        title: Text("Home"),
                        leading: Icon(Icons.home),
                        onTap: () {}),
                    ListTile(
                        title: Text("My Products"),
                        leading: Icon(Icons.add_shopping_cart),
                        onTap: () {}),
                    ListTile(
                        title: Text("About"),
                        leading: Icon(Icons.help_center),
                        onTap: () {}),
                    ListTile(
                        title: Text("Logout"),
                        leading: Icon(Icons.exit_to_app),
                        onTap: () {}),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by Ramez Emad © 2023",
                      style: TextStyle(fontSize: 13)),
                )
              ],
            ),
          ),
          appBar: AppBar(
            actions: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: Text(
                            "1",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_shopping_cart),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      "\$ 30,000",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
            backgroundColor: appbarGreen,
            title: Text("Home1"),
          )),
    );
  }
}
