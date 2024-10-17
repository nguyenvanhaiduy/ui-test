import 'package:flutter/material.dart';
import 'package:ui_test/widget/card_service.dart';

class WidgetTopService extends StatelessWidget {
  const WidgetTopService({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 180,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: CardService(),
          )
        ],
      ),
    );
  }
}
