import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:tomisha_task/screens/pages/page1.dart';
import 'package:tomisha_task/screens/pages/page2.dart';
import 'package:tomisha_task/screens/pages/page3.dart';
import 'package:tomisha_task/widgets/customTabbar.dart';
import 'package:tomisha_task/widgets/wave.dart';

import '../utils/constants.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int? _currentSelection = 0;

  final List<Widget> _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Map<int, Widget> _children = {
      0: const Text('Arbeitnehmer'),
      1: const Text('Arbeitgeber'),
      2: const Text('Temporärbüro'),
    };
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(getHeight(context) * 0.11),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 7,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(20),
              ),
            ),
            flexibleSpace: Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xFF319795),
                      Color(0xFF3182CE),
                    ],
                    begin: FractionalOffset(0.0, 0.0),
                    end: FractionalOffset(1.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp),
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style:
                      GoogleFonts.lato(fontSize: 20, color: Color(0xFF319795)),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.transparent),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              WaveContainer(
                forMobile: true,
                height: getHeight(context),
                width: getWidth(context),
                color: Color(0xFFE6FFFA),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Container(
                        width: getWidth(context) * 0.5,
                        child: Text(
                          'Deine Job website',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              color: Color(0xFF2D3748),
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    Flexible(
                      child: SvgPicture.asset(
                        'assets/undraw_agreement_aajr.svg',
                        width: getWidth(context) * 1.1,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
              CustomTabBar(),
              Flexible(
                child: Container(
                  height: getHeight(context) * 1.7,
                  child: PageView(
                    controller: pageController,
                    children: _pages,
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Material(
          elevation: 50,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            height: getHeight(context) * 0.14,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.black.withOpacity(0.2), width: 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12),
              child: ElevatedButton(
                onPressed: () {},
                child: Ink(
                    width: double.infinity,
                    height: getHeight(context),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF319795),
                            Color(0xFF3182CE),
                          ],
                          begin: FractionalOffset(0.0, 0.0),
                          end: FractionalOffset(1.0, 0.0),
                          stops: [0.0, 1.0],
                          tileMode: TileMode.clamp),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        'Kostenlos Registrieren',
                        style: GoogleFonts.lato(fontSize: 15, letterSpacing: 2),
                      ),
                    )),
                style: ElevatedButton.styleFrom(
                    elevation: 0, backgroundColor: Colors.transparent),
              ),
            ),
          ),
        ));
  }
}
