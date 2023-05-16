import 'package:aa_code_new/widgets/lang_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:highlight/languages/cpp.dart';
import 'package:highlight/languages/css.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/languages/dart.dart';
import 'package:highlight/languages/javascript.dart';
import 'package:highlight/languages/json.dart';
import 'package:highlight/languages/ruby.dart';
import 'package:highlight/languages/sql.dart';
import 'package:highlight/languages/x86asm.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double hpw2 = (height + width) / 200;
    if (kDebugMode) {
      print(hpw2);
    }
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 44, 52, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          "Aadiraj IDE - Select Language",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w900,
            fontSize: hpw2 * 2.2,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LangButton(
              hpw2: hpw2,
              language: cpp,
              languageS: "C++",
            ),
            LangButton(
              hpw2: hpw2,
              language: python,
              languageS: "Python",
            ),
            LangButton(
              hpw2: hpw2,
              language: css,
              languageS: "CSS",
            ),
            LangButton(
              hpw2: hpw2,
              language: sql,
              languageS: "SQL",
            ),
            LangButton(
              hpw2: hpw2,
              language: dart,
              languageS: "Dart",
            ),
            LangButton(
              hpw2: hpw2,
              language: javascript,
              languageS: "JavaScript",
            ),
            LangButton(
              hpw2: hpw2,
              language: json,
              languageS: "JSON",
            ),
            LangButton(
              hpw2: hpw2,
              language: ruby,
              languageS: "Ruby",
            ),
            LangButton(
              hpw2: hpw2,
              language: x86Asm,
              languageS: "X86 Assembly",
            ),
          ],
        ),
      ),
    );
  }
}
