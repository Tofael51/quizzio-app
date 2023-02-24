import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizzio/pages/dashboard/widgets/common_widget.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class TopSellingMedicineSection extends StatelessWidget {
  const TopSellingMedicineSection({
    Key? key,
    this.itemCount,
    this.label,
    this.withSeeAll = true,
  }) : super(key: key);
  final int? itemCount;
  final String? label;
  final bool withSeeAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithViewAll(
          label: label ?? 'Top Selling Medicine',
          withSeeAll: withSeeAll,
          onTap: () {
            // Get.toNamed(AllMedicineScreen.routeName);
          },
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 230,
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: itemCount ?? 2,
          itemBuilder: (BuildContext ctx, index) {
            return const TopSellingMedicineItem();
          },
        ),
      ],
    );
  }
}

class TopSellingMedicineItem extends StatelessWidget {
  const TopSellingMedicineItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(MedicineProductDetailsScreen.routeName);
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color(0xffE5E5E5),
                width: .5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/medicine-item.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Getwell compressor ',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      const TitleText(
                        title: '8235',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      space3R,
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xffE31F29),
                        ),
                        child: const TitleText(
                          title: '-10%',
                          fontSize: 7,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.12),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(3),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(
                  'assets/icons/cart-green.png',
                  width: 14,
                  height: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
