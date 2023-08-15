import 'dart:ui';

import 'package:eldesoky_website/common/utils/assets.dart';
import 'package:eldesoky_website/common/widgets/latest_news_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
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
          Padding(
            padding: EdgeInsets.only(
              left: width * 0.02,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latest News',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.robotoSlab(
                          fontSize: width * 0.019,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 2,
                        indent: 1,
                        endIndent: width * 0.725,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width * 0.01,
          ),
          const LatestNewsWidget(),
          SizedBox(
            height: width * 0.035,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18.5),
                      child: Stack(
                        children: [
                          Image.asset(
                            AppAssets.newsImage1,
                            width: width * 0.38,
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                            child: Container(
                              width: width * 0.38,
                              height: width * 0.18257,
                              color: Colors.black.withOpacity(0.3),
                              padding: EdgeInsets.only(
                                left: width * 0.025,
                                bottom: width * 0.015,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'News Title',
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: width * 0.025,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: width * 0.007,
                                  ),
                                  SizedBox(
                                    width: width * 0.3,
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.018,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18.5),
                      child: Stack(
                        children: [
                          Image.asset(
                            AppAssets.newsImage2,
                            width: width * 0.38,
                          ),
                          BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                            child: Container(
                              width: width * 0.38,
                              height: width * 0.117,
                              color: Colors.black.withOpacity(0.3),
                              padding: EdgeInsets.only(
                                left: width * 0.025,
                                bottom: width * 0.015,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'News Title',
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: width * 0.022,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: width * 0.007,
                                  ),
                                  SizedBox(
                                    width: width * 0.3,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet consectetur. Purus velit elementum consequat nunc.',
                                      style: GoogleFonts.robotoSlab(
                                        fontSize: width * 0.012,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18.5),
                  child: Stack(
                    children: [
                      Image.asset(
                        AppAssets.newsImage3,
                        width: width * 0.38,
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                        child: Container(
                          width: width * 0.38,
                          height: width * 0.324,
                          color: Colors.black.withOpacity(0.3),
                          padding: EdgeInsets.only(
                            left: width * 0.025,
                            bottom: width * 0.015,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'News Title',
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.025,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: width * 0.007,
                              ),
                              SizedBox(
                                width: width * 0.3,
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: width * 0.05,
          ),
        ],
      ),
    );
  
  }
}
