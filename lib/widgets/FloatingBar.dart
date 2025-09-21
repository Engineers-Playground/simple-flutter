import 'package:flutter/material.dart';

class FloatingBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Colors.red, Colors.redAccent.withOpacity(0.6)],
        ),
      ),
      child: const Center(
        child: Icon(Icons.add, size: 35, color: Colors.white),
      ),
    );
  }
}
