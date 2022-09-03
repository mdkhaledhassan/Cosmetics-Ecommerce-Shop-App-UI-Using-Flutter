import 'package:flutter/material.dart';
import 'package:ui_design/first_page.dart';
import 'package:ui_design/model/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ui_design/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final imglist = Model.getImg();
  final catlist = Model.getCatagorie();
  int current_index = 0;
  void selected(int index) {
    setState(() {
      current_index = index;
    });
  }

  List<Widget> pages = [FirstPage(), SecondPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff17181f),
        child: FloatingActionButton(
          backgroundColor: Color(0xff17181f),
          onPressed: () {},
          child: Icon(
            Icons.center_focus_strong,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                selected(0);
              },
              child: Container(
                height: 50,
                child: current_index == 0
                    ? Column(
                        children: [
                          Icon(
                            Icons.home_rounded,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff4e637c),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                selected(1);
              },
              child: Container(
                height: 50,
                child: current_index == 1
                    ? Column(
                        children: [
                          Icon(
                            Icons.shopping_bag_rounded,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff4e637c),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(
                            Icons.shopping_basket_outlined,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
              ),
            ),
            SizedBox(
              width: 80,
            ),
            InkWell(
              onTap: () {
                selected(2);
              },
              child: Container(
                height: 50,
                child: current_index == 2
                    ? Column(
                        children: [
                          Icon(
                            Icons.settings_rounded,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff4e637c),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                selected(3);
              },
              child: Container(
                height: 50,
                child: current_index == 3
                    ? Column(
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 3,
                            width: 3,
                            decoration: BoxDecoration(
                                color: Color(0xff4e637c),
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: Color(0xff4e637c),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(0xff17181f),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'images/1.jpg',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Hello, Rima",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text("👋")
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Let's choose a look",
                                style: TextStyle(
                                    color: Color(0xff3c3f47),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Color(0xff2d2f35), width: 1)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                              Positioned(
                                right: 13,
                                top: 12,
                                child: Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Color(0xffb6ed9d),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff42434a),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Color(0xffb7b8bc),
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Search products",
                                style: TextStyle(
                                    color: Color(0xff7a7a83),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              )
                            ],
                          ),
                          Icon(
                            Icons.menu,
                            color: Color(0xffb7b8bc),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Catalogue",
                  style: TextStyle(
                      color: Color(0xff17181f),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                        ));
                      },
                      child: Text(
                        "For More",
                        style: TextStyle(
                            color: Color(0xffd9d9d9),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffd9d9d9),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            child: CarouselSlider.builder(
              itemCount: imglist.length,
              options: CarouselOptions(
                enlargeCenterPage: true,
                height: 200,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                reverse: false,
                aspectRatio: 16 / 9,
                viewportFraction: 0.4,
                initialPage: 1,
              ),
              itemBuilder: (context, index, id) {
                return GestureDetector(
                  child: Transform.rotate(
                    angle: 0.0,
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //ClipRRect for image border radius
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          imglist[index].imgurl!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products Categories",
                  style: TextStyle(
                      color: Color(0xff17181f),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Row(
                  children: [
                    Text(
                      "For More",
                      style: TextStyle(
                          color: Color(0xffd9d9d9),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffd9d9d9),
                      size: 15,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 200,
              child: ListView.builder(
                itemCount: catlist.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            '${catlist[index].imgurl}',
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${catlist[index].catName}",
                        style: TextStyle(
                            color: Color(0xff17181f),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
