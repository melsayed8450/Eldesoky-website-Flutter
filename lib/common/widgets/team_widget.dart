import 'package:eldesoky_website/common/utils/app_colors.dart';
import 'package:eldesoky_website/features/home/controller/home_controller.dart';
import 'package:eldesoky_website/models/team_member_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/assets.dart';

// ignore: must_be_immutable
class TeamWidget extends StatefulWidget {
  TeamWidget(
      {super.key,
      required this.teamMember1,
      required this.teamMember2,
      required this.teamMember3});
  TeamMemberModel teamMember1;
  TeamMemberModel teamMember2;
  TeamMemberModel teamMember3;

  @override
  State<TeamWidget> createState() => _TeamWidgetState();
}

class _TeamWidgetState extends State<TeamWidget> {
  // bool _isContentVisible = true;
  final controller = Get.put(HomeController());
  double _opacity = 1.0;

  void _fadeInAndOut() {
    setState(() {
      _opacity = 0.5;
    });

    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Future.delayed(const Duration(milliseconds: 400), () {
              setState(() {
                controller.changeMembersLeft();
              });
            });

            _fadeInAndOut();
          },
          child: Image.asset(
            AppAssets.arrowLeftIcon,
            width: width * 0.03,
          ),
        ),
        AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(milliseconds: 400),
          child: SizedBox(
            height: width * 0.25,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: width * 0.02,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        height: width * 0.25,
                        width: width * 0.25,
                        child: Opacity(
                          opacity: 0.5,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: width * 0.25,
                                  height: width * 0.16,
                                  padding: EdgeInsets.only(
                                    left: width * 0.01,
                                    right: width * 0.01,
                                    top: width * 0.04,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.teamMember1.name,
                                        style: GoogleFonts.robotoSlab(
                                          fontWeight: FontWeight.w700,
                                          fontSize: width * 0.017,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: width * 0.01,
                                          bottom: width * 0.015,
                                        ),
                                        child: Text(
                                          widget.teamMember1.job,
                                          style: GoogleFonts.robotoSlab(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.011,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.teamMember1.description,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.robotoSlab(
                                          fontWeight: FontWeight.w300,
                                          fontSize: width * 0.01,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: width * 0.03,
                                left: width * 0.09,
                                child: Image.asset(
                                  widget.teamMember1.image,
                                  width: width * 0.07,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.15,
                      ),
                      SizedBox(
                        height: width * 0.25,
                        width: width * 0.25,
                        child: Opacity(
                          opacity: 0.5,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: width * 0.25,
                                  height: width * 0.16,
                                  padding: EdgeInsets.only(
                                    left: width * 0.01,
                                    right: width * 0.01,
                                    top: width * 0.04,
                                    // bottom: width * 0.03,
                                  ),
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        widget.teamMember3.name,
                                        style: GoogleFonts.robotoSlab(
                                          fontWeight: FontWeight.w700,
                                          fontSize: width * 0.017,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: width * 0.01,
                                          bottom: width * 0.015,
                                        ),
                                        child: Text(
                                          widget.teamMember3.job,
                                          style: GoogleFonts.robotoSlab(
                                            fontWeight: FontWeight.w500,
                                            fontSize: width * 0.011,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.teamMember3.description,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.robotoSlab(
                                          fontWeight: FontWeight.w300,
                                          fontSize: width * 0.01,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: width * 0.03,
                                left: width * 0.09,
                                child: Image.asset(
                                  widget.teamMember3.image,
                                  width: width * 0.07,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: width * 0.18,
                  right: width * 0.18,
                  child: SizedBox(
                    height: width * 0.25,
                    width: width * 0.4,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Container(
                            width: width * 0.28,
                            height: width * 0.2,
                            padding: EdgeInsets.only(
                              left: width * 0.01,
                              right: width * 0.01,
                              top: width * 0.05,
                              // bottom: width * 0.03,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  widget.teamMember2.name,
                                  style: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.w700,
                                    fontSize: width * 0.02,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: width * 0.01,
                                    bottom: width * 0.015,
                                  ),
                                  child: Text(
                                    widget.teamMember2.job,
                                    style: GoogleFonts.robotoSlab(
                                      fontWeight: FontWeight.w500,
                                      fontSize: width * 0.015,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  widget.teamMember2.description,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.w300,
                                    fontSize: width * 0.013,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: width * 0,
                          // left: width * 0.09,
                          child: Image.asset(
                            widget.teamMember2.image,
                            width: width * 0.07,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Future.delayed(const Duration(milliseconds: 400), () {
              setState(() {
                controller.changeMembersRight();
              });
            });

            _fadeInAndOut();
          },
          child: Image.asset(
            AppAssets.arrowRightIcon,
            width: width * 0.03,
          ),
        ),
      ],
    );
  }
}
