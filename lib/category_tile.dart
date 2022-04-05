import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, this.icon, this.category, this.clicked})
      : super(key: key);

  final IconData? icon;
  final String? category;
  final bool? clicked;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          elevation: 0.2,
          shadowColor: Colors.grey.shade100,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Container(
            decoration: BoxDecoration(
                color: clicked! ? Colors.red.shade300 : Colors.white54,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            height: 70,
            width: 70,
            child: Icon(
              icon,
              size: 25,
              color: clicked! ? Colors.white : Colors.grey,
            ),
          ),
        ),
        Text(
          "$category",
          style: TextStyle(
              color: clicked! ? Colors.red.shade300 : Colors.grey,
              fontWeight: clicked! ? FontWeight.bold : FontWeight.normal),
        )
      ],
    );
  }
}