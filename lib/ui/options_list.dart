import 'package:flutter/material.dart';
import 'package:flutter_selection_animation/ui/page/option_item.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionList extends StatefulWidget {
  @override
  _OptionListState createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
       /* decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange, Colors.red])),*/
       color: Color.fromRGBO(45, 71, 240, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OptionItem(option: 'London', number: 'a'),
            OptionItem(option: 'New York', number: 'b'),
            OptionItem(option: 'Paris', number: 'c'),
            OptionItem(option: 'Tokyo', number: 'd')
          ],
        ));
  }
}
