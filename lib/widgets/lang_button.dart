import 'package:aa_code_new/language.dart';
import 'package:flutter/material.dart';
import 'package:highlight/highlight.dart';

class LangButton extends StatelessWidget {
  const LangButton(
      {super.key,
      required this.hpw2,
      required this.language,
      required this.languageS});
  final double hpw2;
  final String languageS;
  final Mode language;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Languages(language: language, languageS: languageS),
            ),
          );
        },
        style: TextButton.styleFrom(

          foregroundColor: Colors.amber,
          side: const BorderSide(
            color: Colors.amber,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(
              hpw2 * 1.2, hpw2 * 0.8, hpw2 * 1.2, hpw2 * 0.8),
          child: Text(
            languageS,
            style: TextStyle(
                fontSize: hpw2 * 2.5,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w800,
                letterSpacing: 2.5,
                ),
          ),
        ),
      ),
    );
  }
}
