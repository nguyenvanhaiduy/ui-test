import 'package:flutter/material.dart';
import 'package:ui_test/widget/top_rate_listview/item_top_rate.dart';

// ignore: must_be_immutable
class TopRate extends StatefulWidget {
  TopRate({super.key, required this.imageAvt});
  List<String> imageAvt;

  @override
  State<TopRate> createState() => _TopRateState();
}

class _TopRateState extends State<TopRate> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollList);
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Container(
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
            : const LinearGradient(
                colors: [
                  Colors.white,
                  Color.fromARGB(255, 244, 250, 255),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
      ),
      height: 140,
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        itemBuilder: ((context, index) => ItemTopRate(
              isDarkMode: isDarkMode,
              imageUrl: widget.imageAvt[index],
            )),
        itemCount: widget.imageAvt.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      ),
    );
  }

  void _scrollList() {
    int cnt = 0;
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      setState(() {
        widget.imageAvt = widget.imageAvt +
            widget.imageAvt.where((image) {
              if (cnt >= 10) {
                return false;
              }
              cnt++;
              return true;
            }).toList();
      });
      print('load them 10 data');
    }
  }
}
