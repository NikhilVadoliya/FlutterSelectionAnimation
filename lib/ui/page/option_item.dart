import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionItem extends StatefulWidget {
  final String option;
  final String number;
  final VoidCallback onPress;

  const OptionItem(
      {Key key, @required this.option, @required this.number, this.onPress})
      : super(key: key);

  @override
  _OptionItemState createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white24,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 70,
                color: Colors.white70,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.number,
                style: GoogleFonts.nunito(fontSize: 25, color: Colors.white54),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.option,
                style: GoogleFonts.nunito(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 70,
                color: Colors.white70,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.number,
                style: GoogleFonts.nunito(
                    fontSize: 25, color: Color.fromRGBO(45, 71, 240, 1.0)),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.option,
                style: GoogleFonts.nunito(
                    fontSize: 30,
                    color: Color.fromRGBO(45, 71, 240, 1.0),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}
