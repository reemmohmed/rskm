import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';
import 'recoverd_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  bool iscontrol = false;
  var emailController = TextEditingController();
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                'Please enter your email address.you recieved alink to create or set new passwpord via email',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  suffix: InkWell(
                    onTap: () {
                      emailController.clear();
                    },
                    child: const Icon(
                      CupertinoIcons.multiply,
                      color: Colors.red,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value != "") {
                    iscontrol = true;
                  }
                },
                controller: emailController,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecoverdScreen(),
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
                  'Send email',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text('OR'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Verify Using Number',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
