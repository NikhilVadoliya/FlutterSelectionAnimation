import 'package:flutter/material.dart';
import 'package:flutter_selection_animation/ui/options_list.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizMainPage extends StatefulWidget {
  QuizMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<QuizMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Quiz",
          style: GoogleFonts.lato(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Container(color: Colors.white)),
          Expanded(child: OptionList()),
        ],
      ),
    );
  }
}
