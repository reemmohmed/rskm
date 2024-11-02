import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rskm/navigation_buttom/cart_page.dart';

import 'button.dart';

// ignore: must_be_immutable
class DetailsPopup extends StatelessWidget {
  DetailsPopup({super.key});
  List<Color> clr = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow
  ];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: MediaQuery.sizeOf(context).height / 2.3,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Size",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Color",
                            style: TextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Total",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "S",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "M",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "L",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "XL",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: Row(
                              children: [
                                for (var i = 0; i < 4; i++)
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 7),
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: clr[i]),
                                  ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            children: [
                              Text(
                                "-",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "1",
                                style: TextStyle(),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "+",
                                style: TextStyle(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const CartPage();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Text(
                          'Cheack Out',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: Button(
        containerWidth: MediaQuery.sizeOf(context).width / 1.5,
        itext: "Buy Now",
        bgColor: Colors.blue,
      ),
    );
  }
}
