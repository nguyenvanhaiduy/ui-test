import 'package:flutter/material.dart';
import 'package:ui_test/widget/top_rate_listview/rate.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/backgrounds/image 5.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
              const Positioned(
                top: 10,
                right: 40,
                child: Rate(
                  opacity: 0.8,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Miss Zachary Will',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  'Beautician',
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                const SizedBox(
                  width: 160,
                  child: Text(
                    'Occaecati aut nam beatae quo non deserunt consequatur.',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 125,
                  height: 30,
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 153, 106, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book Workshop',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
