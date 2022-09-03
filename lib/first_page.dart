import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';
import 'package:ui_design/model/model.dart';
import 'package:ui_design/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imglist = Model.getImg();
    return Scaffold(
      backgroundColor: Color(0xff17181f),
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(color: Color(0xff2e2f36), width: 2),
                        borderRadius: BorderRadius.circular(100)),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'images/homepic.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 40,
                    right: 40,
                    child: ArcText(
                        startAngleAlignment: StartAngleAlignment.center,
                        radius: 110,
                        text: "ENJOY EASY ✦ MAKEUP DETECTION",
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Choose a ",
                              style: TextStyle(
                                  color: Color(0xff43444a),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          TextSpan(
                              text: "celebrity ",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          TextSpan(
                              text: "look",
                              style: TextStyle(
                                  color: Color(0xff43444a),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        ]),
                      )
                    ],
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "to detect the makeup or snap",
                          style: TextStyle(
                              color: Color(0xff43444a),
                              fontWeight: FontWeight.bold,
                              fontSize: 14)),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "your ",
                              style: TextStyle(
                                  color: Color(0xff43444a),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          TextSpan(
                              text: "picture ",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                          TextSpan(
                              text: "for appliance",
                              style: TextStyle(
                                  color: Color(0xff43444a),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14)),
                        ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Transform.rotate(
                            angle: -0.3,
                            child: const Icon(
                              Icons.arrow_back,
                              color: Color(0xff44444c),
                              size: 30,
                            ))),
                    Expanded(
                      flex: 6,
                      child: CarouselSlider.builder(
                        itemCount: imglist.length,
                        itemBuilder: (context, index, Index) {
                          return Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage(imglist[index].imgurl!),
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                        options: CarouselOptions(
                          viewportFraction: 0.35,
                          aspectRatio: 5.0,
                          scrollDirection: Axis.horizontal,
                          height: 80,
                          autoPlay: true,
                          autoPlayCurve: Curves.easeIn,
                          enlargeCenterPage: true,
                          autoPlayInterval: const Duration(seconds: 2),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Transform.rotate(
                            angle: 0.3,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Color(0xff44444c),
                              size: 30,
                            )))
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  height: 55,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondPage(),
                        ));
                      },
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color(0xff454545),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
