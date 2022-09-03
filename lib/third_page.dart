import 'package:flutter/material.dart';
import 'package:ui_design/model/model.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  final imglist = Model.getImg();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xfff6f6f6), width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: Color(0xff434343),
                        )),
                  ),
                ),
                Spacer(),
                Text(
                  "Catalogue",
                  style: TextStyle(
                      color: Color(0xff17181f),
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Color(0xfff6f6f6), width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.center_focus_strong,
                        size: 20,
                        color: Color(0xff434343),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detect and",
                      style: TextStyle(
                          color: Color(0xffbebebe),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Buy Makeup",
                      style: TextStyle(
                          color: Color(0xff17181f),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: Color(0xff17181f),
                      borderRadius: BorderRadius.circular(15)),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.swap_horiz,
                        size: 25,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              crossAxisCount: 2,
              children: List.generate(imglist.length, (index) {
                return Container(
                  height: 150,
                  width: 100,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      '${imglist[index].imgurl}',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 100,
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
