import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/view/more/my_order_view.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  List aboutTextArr = [
    "Q Cut isn’t just about pre-orders; it’s about maximizing your dining experience. When you arrive at our partner restaurants, your table is ready, and the kitchen is already in motion. Enjoy your meal without the unnecessary wait, and let us handle the rest.",
    "At Q Cut, we believe that great food should be accessible, convenient, and delightful. Our mission is to bridge the gap between busy lives and gourmet meals. Whether you’re a working professional, a student, or a parent juggling multiple responsibilities, we’ve got you covered.",
    "We understand that time is precious. By allowing customers to pre-order their favorite dishes, we empower restaurants to streamline their operations. With well-planned logistics, we ensure fresher ingredients, reduced waste, and faster service. No more waiting around—just delicious food on your plate.",
    "Q Cut isn’t just a food pre-order app; it’s a gateway to a seamless dining experience. Explore personalized discounts, loyalty points, and membership services—all within the same app. We’re not just about food; we’re about enhancing your culinary journey.",
    "We’re proud to be part of the digital revolution reshaping the food industry. As millennials spend hours on their smartphones, we’re here to make sure those hours are well-spent—whether you’re browsing our menu, placing an order, or earning rewards.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        "About Us",
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
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: aboutTextArr.length,
                itemBuilder: ((context, index) {
                  var txt = aboutTextArr[index] as String? ?? "";
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            txt,
                            style: TextStyle(
                                color: TColor.primaryText, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
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
