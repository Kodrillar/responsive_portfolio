import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('An Error occurred!'),
      ),
      body: const Center(
        child: Text('Unable to load data.'),
      ),
    );
  }
}
