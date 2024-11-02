import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'login_screen.dart';

class OnbordingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 19.0,
      ),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splach1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splash2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Shop Now',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
              ' Lorem Ipsum has been the industry\'s standard dummy text',
          image: Image.asset('assets/splag4.png'),
          decoration: pageDecoration,
          footer: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
                // SizedBox(
                //   height: 100,
                // );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
              child: Text(
                "Let's Start",
                style: TextStyle(color: Colors.white, fontSize: 30.0),
              ),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: const Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xEEFE6969),
        ),
      ),
      next: const Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xEEFE6969),
        ),
      ),
      onSkip: () {},
      onDone: () {},
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: const Color(0xEEFE6969),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
