import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.clicked,
    required this.iconPage,
    required this.label,
  }) : super(key: key);
  final void Function()? clicked;
  final Widget iconPage;
  final Text label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: clicked,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            iconPage,
            label,
          ],
        ),
      ),
    );
  }
}
