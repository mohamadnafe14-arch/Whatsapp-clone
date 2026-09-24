import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/widgets/custom_button.dart';

class LandpageBody extends StatelessWidget {
  const LandpageBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final seperation = size.height * 1 / 9;
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          'Welcome to Whatsapp',
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: seperation),
        Image.asset('assets/images/bg.png', width: 350, height: 350),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(onTap: () {}, text: 'AGREE AND CONTINUE'),
        ),
      ],
    );
  }
}
