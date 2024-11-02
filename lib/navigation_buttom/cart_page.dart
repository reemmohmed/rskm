import 'package:flutter/material.dart';
import 'package:rskm/pages/PaymentScreen.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> imageList = [
    "assets/Lip Liner1.jpg",
    "assets/Powder2.jpg",
    "assets/BB Cream1.jpg",
    "assets/Powder.jpg",
  ];

  List<String> productTitles = [
    "Lip Liner",
    "Powder",
    "BB Cream",
    "Powder"
  ];
  List<String> price = ["\$300", "\$400", "\$500", "\$600"];

  List<int> quantities = [1, 1, 1, 1];
  List<bool> checkedList = [true, false, true, false];

  bool selectAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: productTitles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    children: [
                      Checkbox(
                        value: checkedList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            checkedList[index] = value!;
                            selectAll = !checkedList.contains(false);
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTitles[index],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              "Hooded Jacket",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              price[index],
                              style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove, color: Colors.green),
                            onPressed: () {
                              setState(() {
                                if (quantities[index] > 1) {
                                  quantities[index]--;
                                }
                              });
                            },
                          ),
                          Text(
                            "${quantities[index]}",
                            style: const TextStyle(fontSize: 16),
                          ),
                          IconButton(
                            icon: const Icon(Icons.add, color: Colors.black),
                            onPressed: () {
                              setState(() {
                                quantities[index]++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: selectAll,
                    onChanged: (bool? value) {
                      setState(() {
                        selectAll = value!;
                        for (int i = 0; i < checkedList.length; i++) {
                          checkedList[i] = selectAll;
                        }
                      });
                    },
                  ),
                  const SizedBox(
                    width: 240,
                  ),
                  const Text(
                    'Select All',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Total Payment",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      "\$2250",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: ElevatedButton(
              onPressed: () {
                // Handle checkout action
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymentScreen();
                }));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child:
                  const Text('Checkout', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }

  double calculateTotalPayment() {
    double total = 0.0;
    for (int i = 0; i < price.length; i++) {
      if (checkedList[i]) {
        // إزالة علامة الدولار وتحويل السعر إلى رقم
        total += double.parse(price[i].replaceAll('\$', '')) * quantities[i];
      }
    }
    return total;
  }
}
