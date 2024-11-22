import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              benefit.imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          width10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefit.subTitle.text.white.size(13).make(),
              height5,
              benefit.title.text
                  .color(context.appColors.blueText)
                  .size(13)
                  .make(),
            ],
          ),
        ],
      ),
    );
  }
}
