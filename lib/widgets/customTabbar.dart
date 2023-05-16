import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  CarouselController? _carouselController = CarouselController();

  List<String> titles = ['Arbeitnehmer', 'Arbeitgeber', 'Temporärbüro'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: getWidth(context),
      child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            aspectRatio: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            viewportFraction: 0.4,
            onPageChanged: (i, reason) {
              setState(() {
                index = i;
              });
            },
          ),
          items: titles
              .map((e) => InkWell(
                    onTap: () {
                      _carouselController!.animateToPage(titles.indexOf(e));
                    },
                    child: AnimatedContainer(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: index == titles.indexOf(e)
                              ? const Color(0xFF81E6D9)
                              : Colors.white,
                          border: Border.all(
                              color: const Color(0xFFCBD5E0), width: 1),
                          borderRadius: titles.indexOf(e) == 0
                              ? const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomLeft: Radius.circular(12),
                                )
                              : titles.indexOf(e) == 2
                                  ? const BorderRadius.only(
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    )
                                  : BorderRadius.circular(0)),
                      duration: Duration(milliseconds: 300),
                      child: Center(
                        child: Text(
                          e,
                          style: GoogleFonts.lato(
                              fontSize: 16,
                              color: index == titles.indexOf(e)
                                  ? Colors.white
                                  : const Color(0xFF81E6D9)),
                        ),
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
