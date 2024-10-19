import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_test/widget/recommend_gridview/item_gridview.dart';

class Recommend extends StatelessWidget {
  const Recommend({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: isDarkMode
            ? LinearGradient(
                colors: [
                  const Color.fromARGB(255, 43, 69, 88),
                  Colors.grey.withOpacity(0.2),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            : null,
      ),
      height: 500,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 5,
          crossAxisSpacing: 10,
          childAspectRatio: 0.64,
        ),
        children: const [
          ItemGridView(),
          ItemGridView(),
          ItemGridView(),
          ItemGridView(),
        ],
      ),
    );
  }
}

/**
 * 
 * 
 */