import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/assets.dart';

class LatestNewsWidget extends StatefulWidget {
  const LatestNewsWidget({super.key});

  @override
  State<LatestNewsWidget> createState() => _LatestNewsWidgetState();
}

class _LatestNewsWidgetState extends State<LatestNewsWidget>
    with SingleTickerProviderStateMixin {
  static const double smallPicWidth = 0.075;
  static const double largePicWidth = 0.375;
  static const Color transparentColor = Colors.transparent;
  late AnimationController _controller;
  late Animation _animation;

  List<String> imageList = [
    AppAssets.latestNewsExpandedImage1,
    AppAssets.latestNewsExpandedImage2,
    AppAssets.latestNewsExpandedImage3,
    AppAssets.latestNewsExpandedImage4,
    AppAssets.latestNewsExpandedImage5,
    AppAssets.latestNewsExpandedImage6,
    AppAssets.latestNewsExpandedImage7,
    AppAssets.latestNewsExpandedImage8,
    AppAssets.latestNewsExpandedImage9,
    AppAssets.latestNewsExpandedImage10,
  ];

  List<double> imageWidth = List<double>.filled(10, smallPicWidth);
  List<Color> overLayColors = List<Color>.filled(10, transparentColor);

  // initialize _controller, _animation
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animation = Tween(end: 0.3, begin: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  void expand(int i) {
    setState(() {
      imageWidth = List<double>.filled(10, 0.04);
      overLayColors = List<Color>.filled(10, transparentColor);
      imageWidth[i] = largePicWidth;
      overLayColors[i] = Colors.black.withOpacity(0.1);
      _controller.forward();
    });
  }

  void contract() {
    setState(() {
      imageWidth = List<double>.filled(10, smallPicWidth);
      overLayColors = List<Color>.filled(10, transparentColor);
      _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: width * 0.35,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 10; i++)
            MouseRegion(
              onEnter: (_) => expand(i),
              onExit: (_) => contract(),
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width: width * imageWidth[i],
                    height: width * 0.35,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Image.asset(
                        imageList[i],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      color: overLayColors[i],
                      borderRadius: BorderRadius.circular(7),
                    ),
                    duration: const Duration(milliseconds: 500),
                    width: width * imageWidth[i],
                    height: width * 0.35,
                    child: FadeTransition(
                      opacity: _controller.view,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Stack(
                          children: [
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                              child: Container(
                                color: Colors.black.withOpacity(0.3),
                                alignment: Alignment.bottomLeft,
                              ),
                            ),
                            Positioned(
                              right: width * 0.35,
                              bottom: width * 0.04,
                              child: Transform(
                                alignment: FractionalOffset.center,
                                transform: Matrix4.identity()
                                  ..setEntry(3, 2, 0.0015)
                                  ..rotateY(pi * _animation.value * 3.5),
                                child: _animation.value >= 0.2
                                    ? Transform(
                                        alignment: Alignment.bottomLeft,
                                        transform: Matrix4.rotationY(-pi),
                                        child: SizedBox(
                                          width: width * 0.27,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Title News',
                                                style: GoogleFonts.robotoSlab(
                                                  fontSize: width * 0.025,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                height: width * 0.01,
                                              ),
                                              SizedBox(
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc adipiscing morbi nulla potenti.',
                                                  style: GoogleFonts.robotoSlab(
                                                    fontSize: width * 0.015,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
