import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.78,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search here',
              prefixIcon: const Icon(Icons.search),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(2),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 0.6,
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.deepPurple,
                  width: 0.6,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 47,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 0.6,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: const Image(
            image: AssetImage('assets/images/icons/sort.png'),
            fit: BoxFit.fitHeight,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
