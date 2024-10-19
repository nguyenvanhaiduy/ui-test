import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_test/widget/top_service_listview/card_service.dart';

class WidgetTopService extends StatelessWidget {
  const WidgetTopService(
      {super.key, required this.imageUrl, required this.imageAvatar});
  final String imageUrl;
  final String imageAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 140,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 10,
            bottom: 0,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: CardService(
              imageUrl: imageAvatar,
            ),
          )
        ],
      ),
    );
  }
}
