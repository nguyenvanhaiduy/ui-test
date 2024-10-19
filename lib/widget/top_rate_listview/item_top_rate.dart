import 'package:flutter/material.dart';
import 'package:ui_test/widget/top_rate_listview/rate.dart';

class ItemTopRate extends StatelessWidget {
  const ItemTopRate(
      {super.key, required this.isDarkMode, required this.imageUrl});
  final isDarkMode;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(imageUrl),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isDarkMode
                    ? const Color.fromARGB(255, 36, 56, 71)
                    : Colors.white,
              ),
              height: 70,
              width: 80,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Wade Warren',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Beautician',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Rate(opacity: 0.3),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
