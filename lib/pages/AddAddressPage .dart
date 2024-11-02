import 'package:flutter/material.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  _AddAddressPageState createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  bool _isCompleted = false; // حالة لمعرفة إذا تم الضغط على الزر

  void _showCompletionMessage() {
    setState(() {
      _isCompleted = true; // إظهار النص عند الضغط على الزر
    });

    // إخفاء النص بعد 3 ثوانٍ
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isCompleted = false; // إخفاء النص بعد فترة
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Add Address'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Full Name Field
            const AddressInputField(
              label: 'Full Name',
              icon: Icons.person,
            ),
            const SizedBox(height: 10),
            // Mobile Number Field
            AddressInputField(
              label: 'Mobile Number',
              icon: Icons.phone,
            ),
            const SizedBox(height: 10),
            // Address Field
            const AddressInputField(
              label: 'Address',
              icon: Icons.location_on,
            ),
            const SizedBox(height: 10),
            // City Field
            AddressInputField(
              label: 'City',
              icon: Icons.location_city,
            ),
            SizedBox(height: 10),
            // Zip Code Field
            AddressInputField(
              label: 'Zip Code (Postal Code)',
              icon: Icons.mail,
            ),
            SizedBox(height: 10),
            // Country Field
            AddressInputField(
              label: 'Country',
              icon: Icons.public,
            ),
            SizedBox(height: 20),
            // زر إتمام العملية
            ElevatedButton(
              onPressed: _showCompletionMessage, // استدعاء دالة عرض التهنئة
              child: Text(
                'Complete',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
            // نص التهنئة يظهر لفترة محددة
            if (_isCompleted)
              Text(
                ' Completed Successfully!',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

class AddressInputField extends StatelessWidget {
  final String label;
  final IconData icon;

  const AddressInputField({
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.blue),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      ),
    );
  }
}
