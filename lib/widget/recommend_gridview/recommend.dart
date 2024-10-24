import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_test/widget/recommend_gridview/item_gridview.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> with TickerProviderStateMixin {
  final scrollController = ScrollController();
  int count = 10;
  final List<AnimationController> _controller = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollView);
  }

  void _scrollView() {
    setState(() {
      count += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    for (int i = 0; i < count; i++) {
      _controller.add(
        // them animation controller cho tung item trong gridview
        AnimationController(
          duration: const Duration(seconds: 1),
          vsync: this,
        ),
      );
    }
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
      child: GridView.builder(
        controller: scrollController,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // mainAxisSpacing: 5,
          crossAxisSpacing: 10,
          childAspectRatio: 0.64,
        ),
        itemBuilder: (context, index) {
          _controller[index].forward();
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller[index],
              curve: Curves.easeIn,
            ),
            child: const ItemGridView(),
          );
        },
        itemCount: count,
      ),
    );
  }
}

/**
 * 
 * 
 */