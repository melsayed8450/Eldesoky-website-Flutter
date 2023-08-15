import 'package:eldesoky_website/common/utils/app_colors.dart';
import 'package:eldesoky_website/common/utils/assets.dart';
import 'package:eldesoky_website/common/widgets/animated_text.dart';
import 'package:eldesoky_website/common/widgets/gallery_card.dart';
import 'package:eldesoky_website/common/widgets/team_widget.dart';
import 'package:eldesoky_website/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key, required this.tabController});
  final controller = Get.put(HomeController());
  TabController tabController;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: width * 0.08,
            left: width * 0.0915,
            right: width * 0.07,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 0.4,
                    child: Column(
                      children: [
                        Text(
                          'Constructing the future just the way you envision it',
                          style: GoogleFonts.robotoSlab(
                            fontSize: width * 0.05,
                            wordSpacing: width * 0.015,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Discover a world where craftsmanship meets innovation – welcome to a construction experience that transforms dreams into reality.',
                          style: GoogleFonts.robotoSlab(
                            fontSize: width * 0.018,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.asset(
                          AppAssets.introImage1,
                          width: width * 0.18,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.0185,
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Image.asset(
                              AppAssets.introImage2,
                              width: width * 0.18,
                            ),
                          ),
                          SizedBox(
                            height: width * 0.0185,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                              ),
                            ),
                            child: Image.asset(
                              AppAssets.introImage3,
                              width: width * 0.18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.18,
              ),
              Column(
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
                                'About us',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.019,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 1,
                                endIndent: width * 0.75,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.aboutUsImage,
                        width: width * 0.315,
                      ),
                      SizedBox(
                        width: width * 0.035,
                      ),
                      SizedBox(
                        width: width * 0.48,
                        height: width * 0.42,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Desoky Industrial Constructions Company is specialized in the field of industrial construction and infrastructure. Established in 2005, the company has been committed to delivering the highest levels of quality and innovation in the construction industry. The company possesses a team of experienced engineers and technicians capable of executing diverse and complex projects.',
                              style: GoogleFonts.robotoSlab(
                                fontSize: width * 0.02,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: width * 0.09,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '200',
                                        style: GoogleFonts.robotoSlab(
                                          fontSize: width * 0.02,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: width * 0.008,
                                      ),
                                      Text(
                                        'Engineers',
                                        style: GoogleFonts.robotoSlab(
                                          fontSize: width * 0.015,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: width * 0.01),
                                  child: Container(
                                    height: width * 0.09,
                                    width: width * 0.15,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1500',
                                          style: GoogleFonts.robotoSlab(
                                            fontSize: width * 0.02,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          height: width * 0.008,
                                        ),
                                        Text(
                                          'Engineers',
                                          style: GoogleFonts.robotoSlab(
                                            fontSize: width * 0.015,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: width * 0.09,
                                  width: width * 0.15,
                                  decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '150',
                                        style: GoogleFonts.robotoSlab(
                                          fontSize: width * 0.02,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: width * 0.008,
                                      ),
                                      Text(
                                        'Residential project',
                                        style: GoogleFonts.robotoSlab(
                                          fontSize: width * 0.015,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.15,
              ),
              Column(
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
                                'Gallery',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.019,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 1,
                                endIndent: width * 0.75,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: width * 0.6,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: width * 0.018,
                        crossAxisSpacing: width * 0.018,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        GalleryCard(
                          title: 'Harbor View Residences',
                          image: AppAssets.galleryImage1,
                          description:
                              'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
                        ),
                        GalleryCard(
                          title: 'City Heights Plaza',
                          image: AppAssets.galleryImage2,
                          description:
                              'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
                        ),
                        GalleryCard(
                          title: 'Skylight Tower',
                          image: AppAssets.galleryImage3,
                          description:
                              'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
                        ),
                        GalleryCard(
                          title: 'MetroLoft Tower',
                          image: AppAssets.galleryImage4,
                          description:
                              'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.015,
                ),
                child: Row(
                  children: [
                    AnimatedText(
                      text: '2005',
                    ),
                    AnimatedText(
                      text: '2006',
                    ),
                    AnimatedText(
                      text: '2007',
                    ),
                    AnimatedText(
                      text: '2008',
                    ),
                    AnimatedText(
                      text: '2009',
                    ),
                    AnimatedText(
                      text: '2010',
                    ),
                    AnimatedText(
                      text: '2011',
                    ),
                    Image.asset(
                      AppAssets.arrowRightIcon,
                      width: width * 0.03,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.025,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.015,
                ),
                child: Row(
                  children: [
                    Text(
                      'More',
                      style: GoogleFonts.robotoSlab(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: width * 0.023,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.currentPage.value = 2;
                        tabController.animateTo((2));
                      },
                      child: Image.asset(
                        AppAssets.moreIcon,
                        width: width * 0.03,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.15,
              ),
              Column(
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
                                'Team work',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.019,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 1,
                                endIndent: width * 0.75,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(() {
                    return TeamWidget(
                      teamMember1:
                          controller.teamMembers[controller.teamMember1.value],
                      teamMember2:
                          controller.teamMembers[controller.teamMember2.value],
                      teamMember3:
                          controller.teamMembers[controller.teamMember3.value],
                    );
                  }),
                ],
              ),
              SizedBox(
                height: width * 0.15,
              ),
              Column(
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
                                'Collaborations',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.019,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 1,
                                endIndent: width * 0.7,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AppAssets.colabImage1,
                        width: width * 0.16,
                      ),
                      Image.asset(
                        AppAssets.colabImage2,
                        width: width * 0.16,
                      ),
                      Image.asset(
                        AppAssets.colabImage3,
                        width: width * 0.16,
                      ),
                      Image.asset(
                        AppAssets.colabImage4,
                        width: width * 0.16,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.15,
              ),
              Column(
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
                                'Future Work',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.019,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                              Divider(
                                color: Colors.black,
                                indent: 1,
                                endIndent: width * 0.73,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width * 0.02,
                    ),
                    child: SizedBox(
                      height: width * 0.45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset(
                            AppAssets.futureImage,
                            width: width * 0.33,
                          ),
                          SizedBox(
                            width: width * 0.42,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SkyNova Tower',
                                  style: GoogleFonts.robotoSlab(
                                    fontSize: width * 0.05,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: width * 0.01,
                                ),
                                Text(
                                  'SkyNova Tower is a visionary architectural marvel that transcends the boundaries of modern design and sustainable living. Soaring high above the skyline, SkyNova is more than just a tower; it\'s a symbol of the future.',
                                  style: GoogleFonts.robotoSlab(
                                    fontSize: width * 0.021,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: width * 0.06,
                                    bottom: width * 0.01,
                                  ),
                                  child: Text(
                                    'Collaboration with',
                                    style: GoogleFonts.robotoSlab(
                                      fontSize: width * 0.02,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  AppAssets.colabImage1,
                                  width: width * 0.1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width * 0.15,
              ),
            ],
          ),
        ),
        Container(
          color: AppColors.primaryColor,
          width: width,
          height: width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: width * 0.08,
                    ),
                    child: Text(
                      'Eldesoky',
                      style: GoogleFonts.robotoSlab(
                        fontSize: width * 0.032,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: width * 0.4,
                height: width * 0.4,
                padding: EdgeInsets.only(
                  top: width * 0.08,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Call us',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                indent: 1,
                                endIndent: width * 0.35,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.callIcon,
                          color: Colors.white,
                          width: width * 0.035,
                        ),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Text(
                          '01201234567',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.robotoSlab(
                            fontSize: width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: width * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email us',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.robotoSlab(
                                  fontSize: width * 0.02,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(
                                color: Colors.white,
                                indent: 1,
                                endIndent: width * 0.33,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          AppAssets.mailIcon,
                          color: Colors.white,
                          width: width * 0.035,
                        ),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Text(
                          'info@desoky_constructs.com',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.robotoSlab(
                            fontSize: width * 0.025,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(),
                  Image.asset(
                    AppAssets.linkedinIcon,
                    width: width * 0.05,
                  ),
                  Image.asset(
                    AppAssets.instagramIcon,
                    width: width * 0.05,
                  ),
                  Image.asset(
                    AppAssets.facebookIcon,
                    width: width * 0.05,
                  ),
                  const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
