import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/utils/app_colors.dart';
import '../../../common/utils/assets.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.13,
        vertical: width * 0.03,
      ),
      child: Column(
        children: [
          SizedBox(
            height: width * 0.08,
          ),
          Row(
            children: [
              Container(
                width: width * 0.4,
                padding: EdgeInsets.all(width * 0.01),
                decoration: const BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                    bottomRight: Radius.circular(7),
                  ),
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Consequat nibh vulputate mattis sed.',
                  style: GoogleFonts.robotoSlab(
                    fontSize: width * 0.019,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: width * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width * 0.4,
                padding: EdgeInsets.all(width * 0.01),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                    bottomLeft: Radius.circular(7),
                  ),
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Consequat nibh vulputate mattis sed.',
                  style: GoogleFonts.robotoSlab(
                    fontSize: width * 0.019,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: width * 0.18,
          ),
          Material(
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
        ],
      ),
    );
  }
}
