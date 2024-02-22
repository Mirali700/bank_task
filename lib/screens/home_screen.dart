import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/font_sty.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  Text('Gaffar Bank',style: GoogleFonts.lobster(),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(FontAwesomeIcons.bell),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 8),
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            gradient: LinearGradient(
              colors: [
               Color(0xff654ea3),
               Color(0xffeaafc8),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Gaffar Bank', style: kCardFont),
                  const FaIcon(
                    FontAwesomeIcons.wifi,
                    color: Colors.white,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('9999 9999 9999 9999', style: kCardFont),
                      IconButton(
                        style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        icon: const Icon(Icons.copy),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12/24',
                        style: kCardFont,
                      ),
                      Text(
                        'CVV',
                        style: kCardFont,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Javid Gaffar',
                    style: kCardFont,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.ccVisa,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
