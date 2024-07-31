import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "WishList",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
