import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';
import 'package:food_delivery/view/menu/French/item_details_view_french1.dart';
import 'package:food_delivery/view/menu/French/item_details_view_french2.dart';
import 'package:food_delivery/view/menu/French/item_details_view_french3.dart';
import 'package:food_delivery/view/menu/French/item_details_view_french4.dart';
import 'package:food_delivery/view/menu/item_details_viewFP.dart';
import 'package:food_delivery/view/menu/item_details_view_BR.dart';
import 'package:food_delivery/view/menu/item_details_view_Cake.dart';
import 'package:food_delivery/view/menu/item_details_view_PZ.dart';
import 'package:food_delivery/view/menu/item_details_view_SH.dart';
import 'package:food_delivery/view/menu/item_details_view_shake.dart';
import 'package:food_delivery/view/more/my_order_view.dart';

import '../../common_widget/menu_item_row.dart';

class HotelMenu2 extends StatefulWidget {
  final Map mObj;
  const HotelMenu2({super.key, required this.mObj});

  @override
  State<HotelMenu2> createState() => _HotelMenu2State();
}

class _HotelMenu2State extends State<HotelMenu2> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/img/french1.jpg",
      "name": "Steak frites",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Burger"
    },
    {
      "image": "assets/img/french2.jpg",
      "name": "Ratatouille",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Tella",
      "food_type": "Pizza"
    },
    {
      "image": "assets/img/french3.jpg",
      "name": "Quiche Lorraine",
      "rate": "4.9",
      "rating": "124",
      "type": "Café Racer",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/french4.jpg",
      "name": "Crêpes",
      "rate": "4.9",
      "rating": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Arabian"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/img/btn_back.png",
                          width: 20, height: 20),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        widget.mObj["name"].toString(),
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
                      },
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: "Search Food",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/img/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: menuItemsArr.length,
                itemBuilder: ((context, index) {
                  var mObj = menuItemsArr[index] as Map? ?? {};
                  return MenuItemRow(
                    mObj: mObj,
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsViewFrench1()),
                          );
                          break;
                        case 1:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsViewFrench2()),
                          );
                          break;
                        case 2:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsViewFrench3()),
                          );
                          break;
                        case 3:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsViewFrench4()),
                          );
                          break;
                        case 4:
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemDetailsViewFP()),
                          );
                      }
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
