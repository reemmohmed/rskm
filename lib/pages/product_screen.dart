import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'product_popup_page.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Map<String, String>> productDetails = [
    {
      "image": "assets/one.jpg",
      "title": "Mascara",
      "price": "\$25.00",
    },
    {
      "image": "assets/Foundation 3.jpg",
      "title": "Foundation",
      "price": "\$50.00",
    },
    {
      "image": "assets/Powder.jpg",
      "title": "Lip Liner",
      "price": "\$15.00",
    },
    {
      "image": "assets/BB Cream1.jpg",
      "title": "False Eyelashes",
      "price": "\$30.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Use a default current index
    int currentIndex = 0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 219, 243),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                  child: FanCarouselImageSlider.sliderType1(
                    imagesLink: productDetails.map((e) => e["image"]!).toList(),
                    isAssets: true,
                    autoPlay: true,
                    sliderHeight: 350,
                    showIndicator: true,
                    // Remove the pageController parameter
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productDetails[currentIndex]["title"]!,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        Text(
                          productDetails[currentIndex]["price"]!,
                          style: const TextStyle(
                              color: Color(0xffef6969),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 0,
                      itemSize: 30,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Icon(
                              CupertinoIcons.cart_fill,
                              color: Color(0xffef6969),
                              size: 30,
                            ),
                          ),
                        ),
                        DetailsPopup(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
