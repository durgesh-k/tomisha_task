import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/web/webInfoContainer.dart';

class WebPage2 extends StatefulWidget {
  const WebPage2({super.key});

  @override
  State<WebPage2> createState() => _WebPage2State();
}

class _WebPage2State extends State<WebPage2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Container(
              width: getWidth(context) * 0.2,
              child: Text(
                'Drei einfache Schritte zu deinem neuen Mitarbeiter',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4A5568)),
              )),
        ),
        const WebInfoContainer(
          para1: 'Erstellen dein Unternehmensprofil',
          para2: 'Erstellen ein Jobinserat',
          para3: 'Wähle deinen neuen Mitarbeiter aus',
          image1: 'assets/undraw_personal_file_222m.svg',
          image2: 'assets/undraw_about_me_wa29.svg',
          image3: 'assets/undraw_swipe_profiles1_i6mr.svg',
        ),
      ],
    );
  }
}
