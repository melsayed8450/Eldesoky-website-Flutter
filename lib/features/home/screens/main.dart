import 'package:eldesoky_website/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/widgets/custom_tab_indicator.dart';
import '../controller/home_controller.dart';
import 'contact.dart';
import 'gallery.dart';
import 'home.dart';
import 'news.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController tabController;
  final controller = Get.put(HomeController());

  @override
  void initState() {
    tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  _getItemByIndex(int index) {
    var pages = [
      HomePage(
        tabController: tabController,
      ),
      const NewsPage(),
      const GalleryPage(),
      const ContactPage(),
    ];
    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: width * 0.03,
              ),
              width: width * 0.88,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Eldesoky',
                    style: GoogleFonts.robotoSlab(
                      fontSize: width * 0.032,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.4,
                        child: TabBar(
                          onTap: (int i) {
                            controller.currentPage.value = i;
                          },
                          controller: tabController,
                          overlayColor: MaterialStateColor.resolveWith(
                              (states) => Colors.transparent),
                          indicatorColor: Colors.black,
                          dividerColor: Colors.transparent,
                          indicator: MyTabIndicator(),
                          labelStyle: GoogleFonts.robotoSlab(
                            fontSize: width * 0.016,
                            fontWeight: FontWeight.w700,
                          ),
                          unselectedLabelStyle: GoogleFonts.robotoSlab(
                            fontSize: width * 0.016,
                            fontWeight: FontWeight.w700,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          isScrollable: true,
                          tabs: const [
                            Tab(
                                child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Home',
                              ),
                            )),
                            Tab(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('News'))),
                            Tab(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Gallery'))),
                            Tab(
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Contact Us'))),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.08,
                      ),
                      Text(
                        'En',
                        style: GoogleFonts.robotoSlab(
                          fontSize: width * 0.032,
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Obx(() {
              return _getItemByIndex(controller.currentPage.value);
            }),
          ],
        ),
      ),
    );
  }
}
