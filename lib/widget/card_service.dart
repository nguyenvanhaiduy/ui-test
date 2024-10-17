import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  const CardService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 255,
      height: 150,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/Ellipse 1097.png',
            width: 50,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Miss Zachary Will',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                'Beautician',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                width: 160,
                child: Text(
                  'Doloribus saepe aut necessit qui non qui.',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  TextButton.icon(
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.grey[100]),
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                    label: const Text(
                      '4.9',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 153, 106, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white),
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
