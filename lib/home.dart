import 'package:flutter/material.dart';
import 'package:ui_test/data/data.dart';
import 'package:ui_test/widget/deal.dart';
import 'package:ui_test/widget/label.dart';
import 'package:ui_test/widget/recommend_gridview/recommend.dart';
import 'package:ui_test/widget/search_bar.dart';
import 'package:ui_test/widget/top_rate_listview/top_rate.dart';
import 'package:ui_test/widget/top_service_listview/top_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final color = MediaQuery.of(context).platformBrightness == Brightness.dark
        ? Colors.white
        : null;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const ImageIcon(
            AssetImage('assets/images/icons/menu-burger (1) 1.png'),
          ),
        ),
        title: const Image(
          image: AssetImage('assets/images/icons/logo.png'),
          width: 70,
        ),
        centerTitle: false,
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.only(top: 5),
            child: Image(
              image:
                  const AssetImage('assets/images/icons/notification-bing.png'),
              color: color,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.all(7),
            width: 45,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 71, 99, 146).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(
              image: const AssetImage('assets/images/icons/shopping-cart.png'),
              color: color,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      // drawer: const Drawer(),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1), () {
            setState(() {
              imageAvatars.shuffle();
            });
          });
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomSearchBar(),
              const SizedBox(height: 16),
              const Deal(),
              const SizedBox(height: 15),
              const Label(name: 'Top Rated Freelances', text: 'View All'),
              const SizedBox(height: 15),
              TopRate(
                imageAvt: imageAvatars,
              ),
              const SizedBox(height: 30),
              const Label(name: 'Top Services', text: 'View All'),
              const SizedBox(height: 15),
              TopService(
                imageBgd: imageBackgrounds,
                imageAvt: imageAvatars,
              ),
              const SizedBox(height: 10),
              const Label(name: 'Recommended Workshops', text: 'View All'),
              const SizedBox(height: 10),
              const Recommend(),
            ],
          ),
        ),
      ),
    );
  }
}
