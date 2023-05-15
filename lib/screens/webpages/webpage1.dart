import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/web/webInfoContainer.dart';

class WebPage1 extends StatefulWidget {
  const WebPage1({super.key});

  @override
  State<WebPage1> createState() => _WebPage1State();
}

class _WebPage1State extends State<WebPage1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Container(
              width: getWidth(context) * 0.2,
              child: Text(
                'Drei einfache Schritte zu deinem neuen Job',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4A5568)),
              )),
        ),
        const WebInfoContainer(
          para1: 'Erstellen dein Lebenslauf',
          para2: 'Erstellen dein Lebenslauf',
          para3: 'Mit nur einem Klick bewerben',
          image1: 'assets/undraw_Profile_data_re_v81r.svg',
          image2: 'assets/undraw_task_31wc.svg',
          image3: 'assets/undraw_personal_file_222m.svg',
        ),
      ],
    );
  }
}
