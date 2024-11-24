import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/common/dart/extension/snackbar_context_extension.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../../common/widget/w_arrow.dart';
import '../../../../../common/widget/w_empty_expanded.dart';
import '../../../../../common/widget/w_line.dart';
import '../../../../../common/widget/w_long_button.dart';
import '../../../../../common/widget/w_rounded_container.dart';
import '../../../../../common/widget/w_tap.dart';
import 'w_interest_stock_list.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyStock(context)],
    );
  }
}

Widget getMyAccount(BuildContext context) => Container(
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height20,
          "게좌".text.make(),
          Row(
            children: [
              '443원'.text.size(24).bold.white.make(),
              Arrow(
                color: context.appColors.lessImportant,
              ),
              emptyExpanded,
              RoundedContainer(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                radius: 8,
                backgroundColor: context.appColors.buttonBackground,
                child: '채우기'
                    .text
                    .color(context.appColors.lessImportant)
                    .size(12)
                    .make(),
              )
            ],
          ).pSymmetric(h: 20),
          height30,
          Line(
            color: context.appColors.divider,
          ),
          height10,
          LongButton(
            title: '주문내역',
            onTap: () {},
          ),
          LongButton(
            title: '판매수익',
            onTap: () {},
          ),
        ],
      ),
    );
Widget getMyStock(BuildContext context) {
  return Container(
    color: context.appColors.roundedLayoutBackground,
    child: Column(
      children: [
        height30,
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                '관심주식'.text.bold.color(context.appColors.lessImportant).make(),
                '편집하기'.text.color(context.appColors.lessImportant).make()
              ],
            ),
            height20,
            Tap(
              onTap: () {
                context.showSnackbar('기본');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '기본'.text.color(context.appColors.lessImportant).make(),
                  const Arrow(direction: AxisDirection.up),
                ],
              ).pSymmetric(v: 10),
            ),
          ],
        ).pSymmetric(h: 20),
        const InterestStockList(),
      ],
    ),
  );
}
