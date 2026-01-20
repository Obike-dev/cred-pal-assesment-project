import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(252, 252, 252, 1),
      margin: EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30, // circle width
                  height: 30, // circle height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min, // prevents column from taking full height
                    children: [
                      Text(
                        "Pay",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        "Pay",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/phone_img_1.png",
                  width: 100,
                  fit: BoxFit.fitHeight, // scales image to fit container
                ),
              ],
            ),
            Text("data"),
            Row(
              children: [
                Text("data"),
                Spacer(),
                Text("data"),
              ],
            )
          ],
        ),
      ),
    );
  }
}


              //  SizedBox(
              //     height: 70, // 👈 same height for every page
              //     child: FractionallySizedBox(
              //       widthFactor: 1,
              //       child: Image.asset(
              //         "assets/images/phone_img_1.png",
              //         fit: BoxFit.contain,
              //       ),
              //     ),
              //   ),