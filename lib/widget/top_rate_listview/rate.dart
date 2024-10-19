import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({super.key, required this.opacity});
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 189, 189, 189).withOpacity(opacity),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          SizedBox(
            height: 10,
            child: Image(
              image: AssetImage(
                'assets/images/icons/star.png',
              ),
              color: Color.fromARGB(255, 153, 106, 255),
            ),
          ),
          SizedBox(width: 2),
          Text(
            '4.9',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
