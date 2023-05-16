import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:tomisha_task/screens/webpages/webpage1.dart';
import 'package:tomisha_task/screens/webpages/webpage2.dart';
import 'package:tomisha_task/screens/webpages/webpage3.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/wave.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({super.key});

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  int? _currentSelection = 0;

  final Map<int, Widget> _children = {
    0: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Text('Arbeitnehmer'),
    ),
    1: const Text('Arbeitgeber'),
    2: const Text('Temporärbüro'),
  };

  final List<Widget> _pages = [
    const WebPage1(),
    const WebPage2(),
    const WebPage3(),
  ];

  final PageController? _pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
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
                style: GoogleFonts.lato(fontSize: 20, color: Color(0xFF319795)),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WaveContainer(
                forMobile: false,
                height: getHeight(context) * 0.6,
                width: getWidth(context),
                color: Color(0xFFE6FFFA),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: getWidth(context) * 0.2,
                            child: Text(
                              'Deine Job website',
                              style: GoogleFonts.lato(
                                  color: Color(0xFF2D3748),
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(context) * 0.04,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 28.0, vertical: 8),
                              child: Text(
                                'Kostenlos Registrieren',
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(
                      width: getWidth(context) * 0.1,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: Container(
                        height: getHeight(context) * 0.4,
                        width: getHeight(context) * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.white),
                        child: SvgPicture.asset(
                          'assets/undraw_agreement_aajr.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )),
            MaterialSegmentedControl(
              children: _children,
              selectionIndex: _currentSelection,
              borderColor: Color(0xFFCBD5E0),
              selectedColor: Color(0xFF81E6D9),
              unselectedColor: Colors.white,
              selectedTextStyle: const TextStyle(color: Color(0xFFF7FAFC)),
              unselectedTextStyle: const TextStyle(color: Color(0xFF319795)),
              borderWidth: 0.9,
              borderRadius: 12.0,
              disabledChildren: [],
              verticalOffset: 8.0,
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                  _pageController!.jumpToPage(index);
                });
              },
            ),
            Flexible(
              child: Container(
                height: getHeight(context) * 1.7,
                child: PageView(
                  controller: _pageController,
                  children: _pages,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
