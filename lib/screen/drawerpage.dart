import 'package:flutter/material.dart';
import 'package:hacktonflutter/widget/text.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D986A),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.centerRight,
                  color: Color(0xff0D986A),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        color: Colors.white,
                      )),
                ),
                Container(
                  height: 60,
                  color: Color(0xff0D986A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/52.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Shop",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  color: Color(0xff0D986A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/142.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Plant Care",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  color: Color(0xff0D986A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/143.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Community",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  color: Color(0xff0D986A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/144.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "MyAccount",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  color: Color(0xff0D986A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/125.png"),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Track Order",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.center,
                  color: Color(0xff0D986A),
                  child: Text(
                    "Get The Dirt",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  ),
                ),
                Container(
                  height: 70,
                  width: 400,
                  color: Color(0xff0D986A),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: FieldText(
                    text: 'Enter Name',
                    bool: true,
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  color: Color(0xff0D986A),
                  alignment: Alignment.center,
                  child: Text(
                    "FAQ",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.center,
                  color: Color(0xff0D986A),
                  child: Text(
                    "ABOUT US",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  color: Color(0xff0D986A),
                  alignment: Alignment.center,
                  child: Text(
                    "CONTACT US",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
