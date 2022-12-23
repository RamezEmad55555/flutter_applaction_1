// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, must_be_immutable, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_application_1/provider/cart.dart';
import 'package:flutter_application_1/shared/appbar.dart';
import 'package:flutter_application_1/shared/colors.dart';
import 'package:provider/provider.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isReadmore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [ProductsAndPrice()],
            backgroundColor: appbarGreen,
            title: Text("Details")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.product.imgPath),
              SizedBox(
                height: 11,
              ),
              Text(
                "\$ ${widget.product.price}",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        "New",
                        style: TextStyle(fontSize: 16),
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 129, 129),
                        borderRadius: BorderRadius.circular(4),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color.fromARGB(255, 255, 191, 0),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.edit_location,
                        size: 28,
                        color: Color.fromARGB(168, 3, 65, 27),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Car show",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 23),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Audi pioneered mid-range performance luxury sedans in India with the S4 in 2012, and a couple of generations down and a sleeker body style later, here is the latest Audi S5 Sportback. Packing a 354hp 3.0-litre turbo-petrol V6, and eight-speed auto and Quattro AWD, it does 0-100kph in a claimed 4.8sec. It was facelifted for 2021 and comes with more aggressive looks and Audi's latest MMI touch media interface. A CBU import, it is priced at Rs 79.06 lakh (ex-showroom, before options) and rivals other mid-range performance luxury cars like the BMW M340i and the Mercedes-AMG C43 Coupe.",
                style: TextStyle(
                  fontSize: 20,
                ),
                maxLines: isReadmore ? 4 : null,
                overflow: TextOverflow.fade,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      isReadmore = !isReadmore;
                    });
                  },
                  child: Text(
                    isReadmore ? "Read more" : "Read less",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ));
  }
}
