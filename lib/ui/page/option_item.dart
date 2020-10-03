import 'package:flutter/material.dart';
import 'package:flutter_selection_animation/ui/helper/colors_helper.dart';
import 'package:flutter_selection_animation/ui/helper/transition_type.dart';
import 'package:flutter_selection_animation/ui/rect_clipper.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionItem extends StatefulWidget {
  final String option;
  final String number;
  final VoidCallback onPress;
  final TransitionType transitionType;

  const OptionItem(
      {Key key,
      @required this.option,
      @required this.number,
      this.onPress,
      this.transitionType = TransitionType.LEFT_TO_RIGHT})
      : super(key: key);

  @override
  _OptionItemState createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _scaleController;
  Animation<double> slideAnimation;
  Animation scaleAnimation;
  double slideBegin;
  double slideEnd;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _scaleController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    if (widget.transitionType == TransitionType.RIGHT_TO_LEFT ||
        widget.transitionType == TransitionType.BOTTOM_TO_TOP) {
      slideBegin = 1.0;
      slideEnd = 0.0;
    } else {
      slideBegin = 0.0;
      slideEnd = 1.0;
    }
    slideAnimation =
        Tween(begin: slideBegin, end: slideEnd).animate(_controller);
    scaleAnimation = Tween(begin: 1.0, end: 0.8).animate(_scaleController);
  }

  @override
  Widget build(BuildContext context) {
  //  print(_controller.value);
  //   return AnimatedBuilder(
  //       animation: _controller,
  //       builder: (context, child) {
  //         print("=---------${_controller.value}-=-=${slideAnimation.value}");
  //
  //         return ClipPath(
  //           clipper: RectClipper(slideAnimation.value, widget.transitionType),
  //           child: InkWell(
  //             onTap: () => _controller.forward(),
  //             child: Container(
  //               width: double.infinity,
  //               height: 50,
  //               color: Colors.red,
  //             ),
  //           ),
  //         );
  //       });
  //
    return InkWell(
      onTap: () {
        if (_controller.isCompleted) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white24,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 5,
                  height: 60,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.number,
                  style:
                      GoogleFonts.nunito(fontSize: 25, color: Colors.white54),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  widget.option,
                  style: GoogleFonts.nunito(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          AnimatedBuilder(
            animation: _controller,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 5,
                    height: 60,
                    color: Colors.white70,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    widget.number,
                    style: GoogleFonts.nunito(
                        fontSize: 25, color: ColoursHelper.blue_dark()),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    widget.option,
                    style: GoogleFonts.nunito(
                        fontSize: 28,
                        color: ColoursHelper.blue_dark(),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            builder: (context, child) {
              return ClipPath(
                clipper: RectClipper(slideAnimation.value, widget.transitionType),
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }
}
