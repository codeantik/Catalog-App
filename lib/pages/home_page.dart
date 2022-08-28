// ignore: unnecessary_import
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:grynow/widgets/themes.dart';
// import 'package:demoapp/widgets/home_widgets/header.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 230, 222),
        body: SingleChildScrollView(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(CupertinoIcons.back),
                      Icon(CupertinoIcons.heart),
                    ],
                  ),
                ),
                15.heightBox,
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/nisha_hut.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                  ).cornerRadius(12.0).centered(),
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Nisha Hut'.text.lg.orange500.extraBold.make(),
                        Row(
                          children: [
                            const Icon(CupertinoIcons.clock),
                            '9am - 4pm'.text.black.make().pOnly(left: 5),
                          ],
                        )
                      ],
                    ),
                    'By Neha & Sisters'.text.semiBold.black.make(),
                    '+91777889934'.text.semiBold.black.make(),
                    const SizedBox(
                      height: 10,
                    ),
                    'Chinese food, Fast food, Rolls, Spicy food, Fast food, Fried food, Chowmein, Honey chilli potato, Burgers, Soups, Momos, Fried rice, Drinks and more'
                        .text
                        .thin
                        .size(13)
                        .make(),
                  ],
                ),
                SizedBox(
                  child: Divider(
                    color: Colors.orange[500],
                    height: 20,
                    thickness: 1.5,
                    indent: 3,
                    endIndent: 3,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.location,
                      color: Colors.orange[700],
                    ),
                    'Moti Nagar'.text.orange900.make(),
                    '33/5, Main market, behind Agarwal sweets, in front of Negi shoe store'
                        .text
                        .thin
                        .size(10)
                        .make(),
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/google_map.png',
                        fit: BoxFit.contain,
                        // height: 100,
                      ).cornerRadius(12.0).centered(),
                    ),
                  ],
                  // google maps api
                ),
                10.heightBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    'Ratings & Reviews'.text.black.make(),
                    '(20 Reviews)'.text.thin.black.make(),
                    10.heightBox,
                    Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 236, 219, 191),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Shubham Kumar'
                              .text
                              .orange500
                              .bold
                              .size(12)
                              .make()
                              .px(2)
                              .py(2),
                          '5 days ago'
                              .text
                              .orange400
                              .bold
                              .thin
                              .size(11)
                              .make()
                              .px(2),
                          5.heightBox,
                          'Food is really tasty and fresh. It\'s quite spicy but one should try this.'
                              .text
                              .black
                              .thin
                              .size(10)
                              .make()
                              .px(2)
                              .py(2),
                        ],
                      ).px(10),
                    ).cornerRadius(12.0),
                    5.heightBox,
                    Container(
                      width: double.infinity,
                      color: const Color.fromARGB(255, 236, 219, 191),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Pushpa Yadav'
                              .text
                              .orange500
                              .bold
                              .size(12)
                              .make()
                              .px(2)
                              .py(2),
                          '25 days ago'
                              .text
                              .orange400
                              .bold
                              .thin
                              .size(11)
                              .make()
                              .px(2),
                          5.heightBox,
                          'Very yummy food!! Its a must try.'
                              .text
                              .black
                              .thin
                              .size(10)
                              .make()
                              .px(2)
                              .py(2),
                        ],
                      ).px(10),
                    ).cornerRadius(12.0),
                  ],
                ),
                15.heightBox,
                Container(
                  width: double.infinity,
                  color: Colors.orange[100],
                  child: DottedBorder(
                    color: const Color.fromARGB(255, 206, 91, 4),
                    strokeWidth: 2,
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        'Want to give your review ?'
                            .text
                            .extraBlack
                            .orange900
                            .make(),
                        5.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.star,
                                color: Colors.orange[900]),
                            Icon(CupertinoIcons.star,
                                color: Colors.orange[900]),
                            Icon(CupertinoIcons.star,
                                color: Colors.orange[900]),
                            Icon(CupertinoIcons.star,
                                color: Colors.orange[900]),
                            Icon(CupertinoIcons.star,
                                color: Colors.orange[400]),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // ),
      ),
      // ),
    );
  }

  make() {}
}
