import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  final List<Map<String, dynamic>> features;
  const Featured({
    super.key,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        4,
        (index) => SizedBox(
          child: Column(
            children: [
              Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(features[index]["img"])),
            ],
          ),
        ),
      ),
    );
  }
}
