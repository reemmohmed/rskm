import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'product_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabs = ["ALL", "Category", "Top", "Recommended"];
  List<String> imageList = [
    "assets/pawder.jpg",
    "assets/Powder1.jpg",
    "assets/BB Cream1.jpg",
    "assets/Foundation 2.jpg",
    "assets/Foundation.jpg",
    "assets/Lip Liner1.jpg"
  ];
  List<String> descriptions = [
    "Makeup powder is a cosmetic product used to enhance and set makeup on the skin.",
    "Foundation is a key makeup product designed to create an even skin tone and provide a base for the rest of your makeup.",
    "Foundation helps to conceal blemishes, imperfections, and uneven skin tones, giving your skin a smooth and flawless appearance.",
    "Highlighter is a makeup product used to accentuate and enhance the high points of the face, creating a radiant and luminous look.",
    "Lip liner is a cosmetic product used to define and shape the lips, creating a precise outline that enhances the overall look of lip makeup.",
  ];
  List<String> productTitles = [
    "Powder",
    "Foundation",
    "Foundation 2",
    "Highlighter",
    "Lip Liner",
  ];
  List<String> price = ["\$300", "\$400", "\$500", "\$600", "\$500", "\$500"];
  List<String> reviews = ["55", "120", "90", "30", "44", "88"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.5,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffEF6969),
                            ),
                            border: InputBorder.none,
                            labelText: "Find your product",
                            labelStyle: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 88,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notification_add,
                          color: Color(0xffEF6969),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 130,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/one.jpg",
                        )),
                    color: const Color(0xffFFFDDD),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: tabs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 40,
                        margin: const EdgeInsets.all(8),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            tabs[index],
                            style: const TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    itemCount:
                        imageList.length, // تأكد من أن كل القوائم بنفس الطول
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index >= productTitles.length ||
                          index >= descriptions.length ||
                          index >= reviews.length ||
                          index >= price.length) {
                        return Container(); // العودة عن العنصر في حالة وجود فهرس غير صالح
                      }
                      return Container(
                        width: 300,
                        margin: const EdgeInsets.only(right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ProductScreen();
                                      }));
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color(0xffEF6969),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    productTitles[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      descriptions[index],
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 22,
                                      ),
                                      Text('(${reviews[index]})'),
                                      Text(
                                        price[index],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Color(0xffEF6969),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Newest Products",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    itemCount: productTitles.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.6,
                            crossAxisSpacing: 2),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return ProductScreen();
                                          },
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                      right: 10,
                                      top: 10,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Color(0xffEF6969),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            // Text(
                            //   descriptions[index],
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            // ),
                            const SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 22,
                                ),
                                Text(
                                  '(${reviews[index]})',
                                ),
                                Text(
                                  price[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xffEF6969)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
