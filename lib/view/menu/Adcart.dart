import 'package:flutter/material.dart';
import 'package:food_delivery/common_widget/round_button.dart';
import 'package:food_delivery/view/home/home_view.dart';
import 'package:food_delivery/view/more/my_order_view.dart';

import '../../common/color_extension.dart';

class CartMsg extends StatefulWidget {
  const CartMsg({super.key});

  @override
  State<CartMsg> createState() => _CartMsgState();
}

class _CartMsgState extends State<CartMsg> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      decoration: BoxDecoration(
          color: TColor.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: TColor.primaryText,
                  size: 25,
                ),
              )
            ],
          ),
          Text(
            "Your Order",
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 26,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Has been added to your cart",
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 17,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 25,
          ),
          const SizedBox(
            height: 35,
          ),
          RoundButton(
              title: "Move to cart",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyOrderView()));
              }),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
