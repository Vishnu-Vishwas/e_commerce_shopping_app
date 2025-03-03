import 'package:e_commerce_shopping_app/core/constants/text_style_constants.dart';
import 'package:e_commerce_shopping_app/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // image
        Positioned.fill(
          child: Image.network(
            'https://images.unsplash.com/photo-1614521084980-811d04f6c6cb?q=80&w=3135&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.cover,
          ),
        ),

        // black screen on the image
        Container(
          color: Colors.black54,
        ),

        // text
        Positioned.fill(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Welcome to the Shopping App',
                style: TextStyleConstants.onboardingWelcomeText,
              ),

              // get started button
              ElevatedButton(
                style: ButtonStyle(
                    padding:
                        WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(23)),
                    backgroundColor:
                        WidgetStatePropertyAll<Color>(Colors.blue)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyleConstants.onboardingWelcomeText,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
