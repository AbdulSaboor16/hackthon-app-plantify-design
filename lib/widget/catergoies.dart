import 'package:flutter/material.dart';

class CatogoriesWidget extends StatelessWidget {
  List text = ['Top Pick', 'indoor', 'Outdoor', 'Seeds', 'Seeds'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0),
        child: Row(
          children: [
            for (var text in text)
              InkWell(
                child: Container(
                  height: 42,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          '$text',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  setState() {
                    Color(0xff0F2F44);
                  }

                  ;
                },
              ),
          ],
        ),
      ),
    );
  }
}
