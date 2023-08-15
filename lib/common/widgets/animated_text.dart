import 'package:eldesoky_website/common/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AnimatedText extends StatefulWidget {
  AnimatedText({
    super.key,
    required this.text,
  });
  String text;
  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText>
    with SingleTickerProviderStateMixin {
  bool _isClicked = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void _toggleSize() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }

  void _onPressed() {
    if (!_isClicked) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    _toggleSize();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double targetSize = _isClicked ? width * 0.025 : width * 0.018;
    FontWeight targetWeight = _isClicked ? FontWeight.w600 : FontWeight.w500;

    return Padding(
      padding: EdgeInsets.only(
        right: width * 0.065,
      ),
      child: GestureDetector(
        onTap: _onPressed,
        child: Column(
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 500),
              style: GoogleFonts.robotoSlab(
                fontWeight: targetWeight,
                color: Colors.black,
                fontSize: targetSize,
              ),
              child: Text(
                widget.text,
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: _animation.value,
                  child: Container(
                    width: width * 0.007,
                    height: width * 0.007,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Transform.scale(
                  scale: 1 - _animation.value,
                  child: Image.asset(
                    AppAssets.arrowUpIcon,
                    width: width * 0.03,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
