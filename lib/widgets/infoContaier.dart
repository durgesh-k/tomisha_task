import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/wave.dart';

class InfoContainer extends StatefulWidget {
  final String para1;
  final String para2;
  final String para3;
  final String image1;
  final String image2;
  final String image3;
  const InfoContainer(
      {required this.para1,
      required this.para2,
      required this.para3,
      required this.image1,
      required this.image2,
      required this.image3,
      super.key});

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(context) * 1.4,
      width: getWidth(context),
      child: Stack(
        children: [
          Positioned(
              top: getHeight(context) * 0.7,
              left: -getWidth(context) * 0.1,
              child: Container(
                width: getHeight(context) * 0.45,
                height: getHeight(context) * 0.45,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(1000),
                    ),
                    color: Color(0xFFF7FAFC)),
              )),
          Positioned(
              top: getHeight(context) * 0.7,
              left: 0,
              child: Container(
                width: getHeight(context) * 0.45,
                height: getHeight(context) * 0.45,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: getHeight(context) * 0.04,
                      left: getWidth(context) * 0.1,
                      right: getWidth(context) * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '3. ',
                            style: GoogleFonts.lato(
                                //height: 0.1,
                                fontSize: 120,
                                color: Color(0xFF718096)),
                          ),
                          Flexible(
                            child: Container(
                              width: getWidth(context) * 0.4,
                              child: Text(
                                widget.para3,
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Color(0xFF718096)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: SvgPicture.asset(
                          widget.image3,
                          height: getHeight(context) * 0.19,
                          width: getWidth(context) * 0.8,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            top: getHeight(context) * 0.22,
            left: 0,
            child: WaveContainer(
              forMobile: true,
              color: Color(0xFFE6FFFA),
              height: getHeight(context) * 0.6,
              width: getWidth(context),
              child: Padding(
                padding: EdgeInsets.only(
                    top: getHeight(context) * 0.12,
                    left: getWidth(context) * 0.1,
                    right: getWidth(context) * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '2. ',
                          style: GoogleFonts.lato(
                              //height: 0.1,
                              fontSize: 120,
                              color: Color(0xFF718096)),
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                              '\n\n\n\n${widget.para2}',
                              style: GoogleFonts.lato(
                                  fontSize: 14, color: Color(0xFF718096)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.02,
                    ),
                    Flexible(
                      child: SvgPicture.asset(
                        widget.image2,
                        height: getHeight(context) * 0.16,
                        width: getWidth(context) * 0.7,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: WaveContainer(
              forMobile: true,
              color: Colors.white,
              height: getHeight(context) * 0.4,
              width: getWidth(context),
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: getHeight(context) * 0.1,
                    left: getWidth(context) * 0.1,
                    right: getWidth(context) * 0.1),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '1.',
                      style: GoogleFonts.lato(
                          height: 0.1, fontSize: 120, color: Color(0xFF718096)),
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: SvgPicture.asset(
                              widget.image1,
                              height: getHeight(context) * 0.2,
                              width: getWidth(context) * 0.9,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: getHeight(context) * 0.04,
                          ),
                          Flexible(
                            child: Container(
                              child: Text(
                                widget.para1,
                                style: GoogleFonts.lato(
                                    fontSize: 14, color: Color(0xFF718096)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: getHeight(context) * 1.5,
                width: getWidth(context),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 0.3,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
