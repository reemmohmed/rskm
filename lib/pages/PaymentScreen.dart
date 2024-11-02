import 'package:flutter/material.dart';
import 'package:rskm/pages/AddAddressPage%20.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _selectedPaymentMethod = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Payment Options'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentOption(
              label: 'Amazon Pay',
              value: 'Amazon Pay',
              icon: 'assets/icon2.png', // مسار الصورة
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            PaymentOption(
              label: 'Credit Card',
              value: 'Credit Card',
              icon: 'assets/icon2.png', // مسار الصورة
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            PaymentOption(
              label: 'Pay Pal',
              value: 'Pay Pal',
              icon: 'assets/icon2.png', // مسار الصورة
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            PaymentOption(
              label: 'Google Pay',
              value: 'Google Pay',
              icon: 'assets/icon2.png', // مسار الصورة
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value!;
                });
              },
            ),
            // Spacer(),
            PaymentSummary(
              subtotal: 2250,
              discount: 10,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the payment confirmation screen
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddAddressPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: Text(
                'Confirm Payment',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String label;
  final String value;
  final String icon; // مسار الصورة
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const PaymentOption({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 2,
      child: RadioListTile<String>(
        title: Row(
          children: [
            Image.asset(
              icon,
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 10),
            Text(label),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
      ),
    );
  }
}

class PaymentSummary extends StatelessWidget {
  final double subtotal;
  final double discount;

  const PaymentSummary({
    super.key,
    required this.subtotal,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    double totalPayment = subtotal - (subtotal * discount / 100);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SummaryRow(
            label: 'Sub Total', value: '\$${subtotal.toStringAsFixed(2)}'),
        SummaryRow(label: 'Discount', value: '${discount.toStringAsFixed(0)}%'),
        const Divider(), // إضافة الفاصل بين الخصم والمجموع النهائي
        SummaryRow(
            label: 'Total Payment',
            value: '\$${totalPayment.toStringAsFixed(2)}'),
      ],
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const SummaryRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Text(value,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
