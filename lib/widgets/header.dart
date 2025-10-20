import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 360,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Image.network(
              fit: BoxFit.fill,
              height: 360,
              image,
            ),
            // child: NetworkImage(fit: BoxFit.fill, height: 360, image),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.qr_code, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.camera_alt, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
