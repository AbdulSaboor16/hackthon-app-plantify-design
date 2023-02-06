import 'package:flutter/material.dart';
import 'package:hacktonflutter/screen/drawerpage.dart';
import 'package:hacktonflutter/widget/catergoies.dart';
import 'package:hacktonflutter/widget/itemwidget.dart';
import 'package:hacktonflutter/widget/mindata.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 200,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: Image.asset("assets/images/Logoo.png"),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notification_add_outlined)),
                        ),
                        Container(
                          height: 60,
                          width: 70,
                          color: Color.fromARGB(255, 255, 255, 255),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DrawerPage()),
                                );
                              },
                              icon: Icon(Icons.menu)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 200,
                      child: Image.asset("assets/images/73.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 250,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.search),
                          text1('Search', 13, FontWeight.w400),
                          const SizedBox(
                            width: 40,
                          ),
                          Icon(Icons.qr_code_scanner),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.filter_1_rounded),
                    ),
                  ],
                ),
              ),
              CatogoriesWidget(),
              ItemWidget(
                ontap: () {},
              ),
              ItemWidget(
                ontap: () {},
              ),
              ItemWidget(
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
