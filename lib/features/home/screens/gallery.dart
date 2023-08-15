import 'package:flutter/material.dart';

import '../../../common/utils/assets.dart';
import '../../../common/widgets/gallery_card.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.1,
        vertical: width * 0.05,
      ),
      child: SizedBox(
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
            GalleryCard(
              title: 'EcoVista Apartments',
              image: AppAssets.galleryImage5,
              description:
                  'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
            ),
            GalleryCard(
              title: 'Riverside Residances',
              image: AppAssets.galleryImage6,
              description:
                  'Lorem ipsum dolor sit amet consectetur. Consectetur eleifend gravida erat orci consequat mauris quam dignissim. Et varius felis facilisis tortor eu tempus pretium. Tristique morbi facilisis mauris quis.',
            ),
          ],
        ),
      ),
    );
  }
}
