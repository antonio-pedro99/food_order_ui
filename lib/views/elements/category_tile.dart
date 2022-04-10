import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile(
      {Key? key, this.icon, this.category, this.clicked, this.onClicked})
      : super(key: key);

  final IconData? icon;
  final String? category;
  final bool? clicked;
  final VoidCallback? onClicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onClicked,
        child: Column(
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
                  color: clicked! ? Colors.white : Colors.grey.shade400,
                ),
              ),
            ),
            Text(
              "$category",
              style: TextStyle(
                  color: clicked! ? Colors.red.shade300 : Colors.grey.shade400,
                  fontWeight: clicked! ? FontWeight.bold : FontWeight.normal),
            )
          ],
        ));
  }
}
