import 'package:flutter/material.dart';
import 'package:ui_test/widget/top_service_listview/widget_top_service.dart';

// ignore: must_be_immutable
class TopService extends StatefulWidget {
  TopService({super.key, required this.imageBgd, required this.imageAvt});
  List<String> imageBgd;
  List<String> imageAvt;

  @override
  State<TopService> createState() => _TopServiceState();
}

class _TopServiceState extends State<TopService> {
  final scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollView);
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.only(top: 10),
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
      height: 460,
      child: ListView.separated(
        controller: scrollController,
        itemCount: widget.imageBgd.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) => WidgetTopService(
          imageUrl: widget.imageBgd[index],
          imageAvatar: widget.imageAvt[index],
        ),
      ),
    );
  }

  void _scrollView() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      setState(() {
        int cnt = 0;
        widget.imageBgd = widget.imageBgd +
            widget.imageAvt.where((element) {
              if (cnt >= 10) {
                return false;
              }
              cnt++;
              return true;
            }).toList();
      });
      setState(() {
        int cnt = 0;
        widget.imageAvt = widget.imageAvt +
            widget.imageAvt.where((element) {
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
