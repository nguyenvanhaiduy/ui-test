import 'package:flutter/material.dart';
import 'package:ui_test/widget/widget_top_service.dart';

class TopService extends StatelessWidget {
  const TopService({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView(
        children: const [
          SizedBox(
            height: 10,
          ),
          WidgetTopService(
            imageUrl: 'assets/images/image 6.png',
          ),
          SizedBox(
            height: 10,
          ),
          WidgetTopService(
            imageUrl: 'assets/images/image 7.png',
          ),
          SizedBox(
            height: 10,
          ),
          WidgetTopService(
            imageUrl: 'assets/images/image 8.png',
          ),
        ],
      ),
    );
  }
}
