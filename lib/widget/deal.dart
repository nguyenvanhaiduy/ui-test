import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deal extends StatelessWidget {
  const Deal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0x00cbdaee),
            Color.fromARGB(255, 178, 207, 253),
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Todays Deal',
                    style: GoogleFonts.hind()
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 16)),
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
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Image(
                    width: 100,
                    image: AssetImage(
                      'assets/images/backgrounds/buy_it_now.png',
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  const Color.fromARGB(255, 78, 137, 185),
                  const Color(0x00ffffff).withOpacity(0)
                ],
              ),
            ),
            child: const Image(
              image: AssetImage('assets/images/backgrounds/image 4.png'),
              fit: BoxFit.fitHeight,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
