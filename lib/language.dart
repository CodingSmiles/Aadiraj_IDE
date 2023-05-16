// ignore_for_file: unused_import

import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter_highlight/themes/atom-one-dark.dart';
import 'package:flutter_highlight/themes/arduino-light.dart';
import 'package:highlight/highlight.dart';

class Languages extends StatefulWidget {
  const Languages({super.key, required this.language, required this.languageS});
  final Mode language;
  final String languageS;

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  Map<String, TextStyle> theme = atomOneDarkTheme;
  Color bgcol = const Color.fromRGBO(40, 44, 52, 1);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double hpw2 = (height + width) / 200;
    ScrollController codeScroll = ScrollController(
      keepScrollOffset: true,
      initialScrollOffset: 60,
    );
    CodeController controller = CodeController(
      language: widget.language,
    );
    double lWid = (60.0);
    return Scaffold(
      backgroundColor: bgcol,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              FlutterClipboard.copy(controller.text);
            },
            icon: const Icon(
              Icons.copy_sharp,
              weight: 100,
              grade: -25,
              color: Colors.black,
            ),
          ),

        ],
        title: Text(
          "Aadiraj IDE - ${widget.languageS}",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w900,
            letterSpacing: 2,
            fontSize: hpw2 * 2.2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        controller: codeScroll,
        child: CodeTheme(
          key: widget.key,
          data: CodeThemeData(styles: theme),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12.0,
              right: 12.0,
            ),
            child: CodeField(
              lineNumberStyle: LineNumberStyle(
                margin: 8,
                width: lWid,
                textAlign: TextAlign.center,
                textStyle: const TextStyle(
                  fontFamily: 'FiraCode',
                ),
              ),
              textStyle: TextStyle(
                fontSize: hpw2 * 2.5,
                fontFamily: 'FiraCode',
                letterSpacing: 1.5,
              ),
              wrap: true,
              controller: controller,
              textSelectionTheme: const TextSelectionThemeData(
                selectionColor: Color.fromRGBO(
                  38,
                  79,
                  120,
                  1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
