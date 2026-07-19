import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'HomeView';

  @override
  Widget build(BuildContext context) {
    print("HOME BUILD");

    return Scaffold(
      backgroundColor: Colors.red,
      body: const Center(
        child: Text(
          'ازيك يا معلم شكرا ع التست ',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
