import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/one.jpg'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle:
                            const TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: const BorderSide(
                            color: Color(0xEEFE6969),
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                        ),
                        prefixIconColor: const Color(0xEEFE6969),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle:
                            const TextStyle(color: const Color(0xEEFE6969)),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          // borderSide: BorderSide(width: 1,color: Color(0xEEFE6969),),
                        ),
                        prefixIcon: const Icon(
                          Icons.email,
                        ),
                        prefixIconColor: const Color(0xEEFE6969),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone',
                        labelStyle:
                            const TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(Icons.phone),
                        prefixIconColor: const Color(0xEEFE6969),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle:
                            const TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: const Color(0xEEFE6969),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                        ),
                        suffixIconColor: const Color(0xEEFE6969),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: ' Confirm Password',
                        labelStyle:
                            const TextStyle(color: const Color(0xEEFE6969)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: const Color(0xEEFE6969),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                        ),
                        suffixIconColor: const Color(0xEEFE6969),
                      ),
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
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(40),
                        backgroundColor: const Color(0xEEFE6969),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                      ),
                      child: Text(
                        'Creat Acount',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an acount'),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Login in',
                          style: TextStyle(
                            color: Color(0xEEFE6969),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
