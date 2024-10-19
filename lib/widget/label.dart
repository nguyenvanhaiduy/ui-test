import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({super.key, required this.name, required this.text});
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          height: 35,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 178, 207, 253),
                Color(0x00cbdaee),
              ],
            ),
          ),
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            text,
            style: TextStyle(
              color: isDarkMode ? Colors.blue[900] : null,
              decoration: TextDecoration.underline,
              decorationColor: isDarkMode ? Colors.blue[900] : null,
            ),
          ),
        ),
      ],
    );
  }
}
