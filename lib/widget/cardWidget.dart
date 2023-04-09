import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.iconAvatar,
    required this.label,
    required this.description,
  }) : super(key: key);
  final IconData? iconAvatar;
  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: Stack(
          children: [
            const Positioned(
              top: 3,
              right: 0,
              child: Image(
                image: AssetImage('assets/images/square.png'),
                height: 100,
                width: 100,
              ),
            ),
            const Positioned(
              top: 40,
              right: 25,
              child: Text(
                "Free",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 15,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  iconAvatar,
                  color: Colors.orange,
                  size: 40,
                ),
              ),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: label,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: description,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
