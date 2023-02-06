import 'package:flutter/material.dart';
import 'package:hacktonflutter/screen/loginpage.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: 600,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Color(0xff0D986A),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0))),
                        child: Image.asset("assets/images/Vector.png"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 250,
                            width: 400,
                            margin: EdgeInsets.only(
                                bottom: 300, left: 20, right: 20, top: 150),
                            child: Image.asset("assets/images/Logo.png"),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 400,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 400),
                            child: Text(
                              "PlANTIFY",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "GET READY",
                    style: TextStyle(fontSize: 30, color: Color(0xff0D986A)),
                  ),
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: Text("BE HONEST",
                      style: TextStyle(fontSize: 30, color: Color(0xff0D986A))),
                ),
                Container(
                  height: 50,
                  width: 400,
                  child: Text(
                      "Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator",
                      style: TextStyle(fontSize: 20, color: Color(0xff0D986A))),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: ElevatedButton(
                    child: Text(
                      'Add To Basket',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff0D986A),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontStyle: FontStyle.normal),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ),
                Container(
                  height: 30,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
