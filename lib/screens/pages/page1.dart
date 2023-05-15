import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/infoContaier.dart';
import 'package:tomisha_task/widgets/wave.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Container(
              width: getWidth(context) * 0.55,
              child: Text(
                'Drei einfache Schritte zu deinem neuen Job',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4A5568)),
              )),
        ),
        const InfoContainer(
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
