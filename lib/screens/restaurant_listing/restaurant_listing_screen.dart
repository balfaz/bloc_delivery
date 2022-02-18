import 'package:flutter/material.dart';

class RestaurantListingScreen extends StatelessWidget {
  const RestaurantListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Location')),
      body: ElevatedButton(
        child: Text('Restaurant Listing'),
        onPressed: () {
          Navigator.pushNamed(context, 'home');
        },
      ),
    );
  }
}
