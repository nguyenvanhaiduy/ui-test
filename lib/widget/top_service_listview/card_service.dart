import 'package:flutter/material.dart';
import 'package:ui_test/widget/top_rate_listview/rate.dart';

class CardService extends StatelessWidget {
  const CardService({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              isDarkMode ? const Color.fromARGB(255, 51, 54, 56) : Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 1)
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            clipBehavior: Clip.hardEdge,
            child: CircleAvatar(
              radius: 20,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Miss Zachary Will',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              const SizedBox(height: 2),
              const Text(
                'Beautician',
                style: TextStyle(color: Colors.purple, fontSize: 10),
              ),
              const SizedBox(height: 2),
              const SizedBox(
                width: 160,
                child: Text(
                  'Doloribus saepe aut necessit qui non qui.',
                  style: TextStyle(
                    fontSize: 9,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Rate(
                    opacity: 0.2,
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 105,
                    height: 30,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 153, 106, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
