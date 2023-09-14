import 'package:flutter/material.dart';

class LoadingInd extends StatelessWidget {
  const LoadingInd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
