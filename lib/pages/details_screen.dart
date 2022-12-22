// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                        child: Text(
                          "1",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
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
          title: Text("Details"),
        ),
        body: Column(
          children: [
            Image.asset("assets/img/Audi.png"),
            SizedBox(
              height: 11,
            ),
            Text(
              "\$ 15,000",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 12),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
