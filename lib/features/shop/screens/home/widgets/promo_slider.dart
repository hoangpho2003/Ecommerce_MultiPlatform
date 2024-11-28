import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_hptshop/features/shop/controllers/home_controller.dart';
import 'package:ecommerce_hptshop/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class HptPromoSlider extends StatelessWidget {
  const HptPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(viewportFraction: 1, onPageChanged: (index, _) => controller.updatePAgeIndicator(index)),
          items: banners.map((url) => HptRoundedImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: HptSizes.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? HptColors.primary : HptColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}