import 'package:flutter/material.dart';
import 'package:hacktonflutter/widget/detailpage.dart';

class ItemWidget extends StatelessWidget {
  final VoidCallback ontap;
  ItemWidget({super.key, required this.ontap});
  List pics = [
    Image.asset('assets/images/Peper.png'),
    Image.asset('assets/images/Peper.png'),
    Image.asset('assets/images/Peper.png'),
    Image.asset('assets/images/Peper.png'),
    Image.asset('assets/images/Peper.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 200,
        width: 300,
        child: ListView(scrollDirection: Axis.horizontal, children: [
          InkWell(
            onTap: () {
              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DetailPage()),
                              );
            },
            child: Container(
                height: 200,
                width: 300,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/7.png',
                        height: 200,
                        width: 240,
                      ),
                      Positioned(
                        left: 120,
                        child: Image.asset(
                          'assets/images/Peper.png',
                          height: 100,
                          width: 200,
                        ),
                      ),
                      Positioned(
                        top: 110,
                        right: 70,
                        child: Container(),
                      ),
                    ],
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
