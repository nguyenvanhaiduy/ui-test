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

class _TopServiceState extends State<TopService> with TickerProviderStateMixin {
  final scrollController = ScrollController();
  final List<AnimationController> _controllers =
      []; // đây là danh sách các đối tưởng
  // dùng để kiểm soát hiệu ứng cho từng item

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollView);
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    // Khởi tạo AnimationController cho mỗi item
    for (int i = 0; i < widget.imageBgd.length; i++) {
      // mỗi AnimationController có thời gian là 1 giây và được đồng bộ với widget hiện tại bằng vsynv: this
      _controllers.add(AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
      ));
    }
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
        controller: scrollController, // kiểm soát việc cuộn
        itemCount: widget.imageBgd.length,
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemBuilder: (context, index) {
          // Bắt đầu hiệu ứng fade in khi item xuất hiện
          _controllers[index].forward();
          return FadeTransition(
            opacity: CurvedAnimation(
              parent: _controllers[index],
              curve: Curves.easeInOut,
            ),
            child: WidgetTopService(
              imageUrl: widget.imageBgd[index],
              imageAvatar: widget.imageAvt[index],
            ),
          );
        },
      ),
    );
  }

  void _scrollView() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      setState(() {
        widget.imageBgd =
            widget.imageBgd + widget.imageAvt.sublist(0, 9).toList();
      });
      setState(() {
        widget.imageAvt =
            widget.imageAvt + widget.imageAvt.sublist(0, 9).toList();
      });
      print('load them 10 data');
    }
  }
}
