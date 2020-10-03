import 'package:flutter/material.dart';
import 'package:flutter_selection_animation/ui/helper/colors_helper.dart';
import 'package:flutter_selection_animation/ui/helper/transition_type.dart';
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
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [ColoursHelper.blue(), ColoursHelper.blue_dark()])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OptionItem(
              option: 'London',
              number: 'a',
              transitionType: TransitionType.BOTTOM_TO_TOP,
            ),
            OptionItem(
                option: 'New York',
                number: 'b',
                transitionType: TransitionType.TOP_TO_BOTTOM),
            OptionItem(
                option: 'Paris',
                number: 'c',
                transitionType: TransitionType.RIGHT_TO_LEFT),
            OptionItem(
                option: 'Tokyo',
                number: 'd',
                transitionType: TransitionType.LEFT_TO_RIGHT)
          ],
        ));
  }
}
