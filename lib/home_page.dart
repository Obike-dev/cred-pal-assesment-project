import 'package:credpal_assesment_project/featured.dart';
import 'package:credpal_assesment_project/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> features = [
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
      {"img": "assets/images/image1.png"},
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final double cardHeight = 174;
    final double cardWidth = 161;
    final double verticalSpacing = 20;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.19,
            decoration: BoxDecoration(
              color: Color.fromRGBO(208, 218, 255, 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "Pay later\n",
                          children: [
                            TextSpan(text: "everywhere"),
                            WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 6),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          SizedBox(height: 10),
                          Text("Shopping limit : @0"),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromRGBO(39, 79, 237, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.all(
                                  Radius.circular(7),
                                ),
                              ),
                            ),
                            child: Text(
                              "Activate Credit",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.78,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      filled: true,
                      fillColor: Color.fromRGBO(244, 245, 254, 1),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(Icons.face_retouching_natural)
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: (cardHeight * 2), // 2 rows + spacing
            decoration: BoxDecoration(
              color: const Color.fromRGBO(241, 243, 254, 1),
            ),
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(
                right: 16,
                top: 10,
                bottom: 15,
                left: 16,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: verticalSpacing,
                crossAxisSpacing: 12,
                mainAxisExtent: cardWidth,
              ),
              itemBuilder: (context, index) {
                return const ProductCard();
              },
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Featured Merchants"),
                        Spacer(),
                        Text("View all"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Featured(
                      features: features,
                    ),
                    SizedBox(height: 20),
                    Featured(
                      features: features,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
