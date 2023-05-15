import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tomisha_task/utils/constants.dart';
import 'package:tomisha_task/widgets/infoContaier.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Container(
              width: getWidth(context) * 0.55,
              child: Text(
                'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF4A5568)),
              )),
        ),
        InfoContainer(
          para1: 'Erstellen dein Unternehmensprofil',
          para2: 'Erhalte Vermittlungs-angebot von Arbeitgeber',
          para3: 'Vermittlung nach Provision Oder Stundenlohn',
          image1: 'assets/undraw_personal_file_222m.svg',
          image2: 'assets/undraw_job_offers_kw5d.svg',
          image3: 'assets/undraw_business_deal_cpi9.svg',
        ),
      ],
    );
  }
}
