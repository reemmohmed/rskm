import 'package:flutter/material.dart';
import 'package:rskm/splasgs/login_screen.dart';

class RecoverdScreen extends StatefulWidget {
  const RecoverdScreen({super.key});

  @override
  State<RecoverdScreen> createState() => _RecoverdScreenState();
}

class _RecoverdScreenState extends State<RecoverdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Reset Code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  prefixIcon: const Icon(Icons.numbers),
                  prefixIconColor: const Color(0xEEFE6969),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: const Color(0xEEFE6969),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    suffixIconColor: const Color(0xEEFE6969)),
                obscureText: true,
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirem Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    prefixIconColor: const Color(0xEEFE6969),
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    suffixIconColor: const Color(0xEEFE6969)),
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(60),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
                child: Text(
                  'Reset Password',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
