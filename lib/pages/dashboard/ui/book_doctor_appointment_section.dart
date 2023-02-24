import 'package:flutter/material.dart';
import 'package:quizzio/pages/dashboard/widgets/common_widget.dart';
import 'package:quizzio/utils/constants.dart';
import 'package:quizzio/utils/widgets/common_widget.dart';

class BookDocAppointmentSection extends StatelessWidget {
  const BookDocAppointmentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWithViewAll(
          label: 'Book Doctor Appointment',
          onTap: () {},
        ),
        Stack(
          children: [
            GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisExtent: 215,
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: 4,
              itemBuilder: (BuildContext ctx, index) {
                return const BookDoctorItem();
              },
            ),
            Positioned(
              right: 10,
              bottom: 227,
              child: ArrowButton(
                color: Colors.white,
                iconColor: kAssentColor,
                iconData: Icons.arrow_forward_ios_rounded,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BookDoctorItem extends StatelessWidget {
  const BookDoctorItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 88,
            width: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(88),
              border: Border.all(color: kAssentColor),
            ),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(76),
                child: Image.asset(
                  'assets/images/product.png',
                  fit: BoxFit.fill,
                  height: 76,
                  width: 76,
                ),
              ),
            ),
          ),
          space2C,
          const TitleText(
            title: 'Physiotherapist',
            fontSize: 14,
          ),
          space1C,
          const TitleText(
            title: 'Best Doctor of Physiotherapist',
            fontSize: 8,
            fontWeight: FontWeight.normal,
          ),
          space3C,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: kAssentColor),
            ),
            child: const TitleText(
              title: 'See All',
              fontSize: 10,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
