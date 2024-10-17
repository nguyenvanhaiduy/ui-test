import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_test/widget/label.dart';
import 'package:ui_test/widget/recommend.dart';
import 'package:ui_test/widget/top_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Image(
          image: AssetImage('assets/images/logo.png'),
          width: 70,
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      // drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search here',
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(2),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        borderSide: BorderSide(
                          color: Colors.pink,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: const Image(
                    image: AssetImage(
                      'assets/images/sort.jpg',
                    ),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 45,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x00cbdaee),
                    Color.fromARGB(255, 142, 207, 237),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Todays Deal',
                          style: GoogleFonts.hind().copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '50% OFF',
                          style: GoogleFonts.hind().copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(
                          width: 220,
                          child: Text(
                            'Et provident eos est dolore. Eum libero eligendi molestias aut et quibusdam aspernatur.',
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {},
                          child: const Image(
                            width: 100,
                            image: AssetImage(
                              'assets/images/Frame 1000001545.png',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage('assets/images/image 4.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Label(name: 'Top Services', text: 'View all'),
            const SizedBox(height: 10),
            const TopService(),
            const Label(name: 'Recommended Workshops', text: 'View all'),
            const SizedBox(height: 10),
            // const Recommend(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1D1F24),
        selectedItemColor: const Color(0xFF827BEB),
        unselectedItemColor: const Color(0xFF676D75),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
