import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizzio/pages/dashboard/widgets/common_widget.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class OfferSection extends StatelessWidget {
  const OfferSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithViewAll(
          label: 'Offers Just for you',
          onTap: () {},
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: const [
                  Expanded(
                    child: OfferItem(),
                  ),
                  Expanded(
                    child: OfferItem(),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              bottom: 35,
              child: ArrowButton(
                onPressed: () {},
              ),
            ),
            Positioned(
              right: 10,
              bottom: 35,
              child: ArrowButton(
                iconData: Icons.arrow_forward_ios_rounded,
                onPressed: () {},
              ),
            ),
          ],
        )
      ],
    );
  }
}

class OfferItem extends StatelessWidget {
  const OfferItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      padding: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(.15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: Image.asset(
                'assets/icons/gp.png',
                height: 51,
              ),
            ),
          ),
          space2R,
          Expanded(
            child: const TitleText(
              title: '10% discount for all lab tests',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          space2R,
        ],
      ),
    );
  }
}
