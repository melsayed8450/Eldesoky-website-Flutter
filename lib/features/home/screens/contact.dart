import 'package:eldesoky_website/common/utils/app_colors.dart';
import 'package:eldesoky_website/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/assets.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.08,
        vertical: width * 0.03,
      ),
      child: Column(
        children: [
          SizedBox(
            height: width * 0.18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: width * 0.2,
                child: Column(
                  children: [
                    Text(
                      'Inquiry',
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.024,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: width * 0.018,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.2,
                child: Column(
                  children: [
                    Text(
                      'Price list',
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.024,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: width * 0.018,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.25,
                child: Column(
                  children: [
                    Text(
                      'Consulting services',
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.024,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: width * 0.018,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: width * 0.18,
          ),
          GestureDetector(
            onTap: () {
              controller.currentPage.value = 4;
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: width * 0.5,
                height: width * 0.05,
                decoration: BoxDecoration(
                  color: AppColors.textFieldColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.greyTextColor,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Write your question',
                        style: GoogleFonts.robotoSlab(
                          fontSize: width * 0.02,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyTextColor,
                        ),
                      ),
                      Image.asset(
                        AppAssets.sendIcon,
                        color: AppColors.primaryColor,
                        width: width * 0.028,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
