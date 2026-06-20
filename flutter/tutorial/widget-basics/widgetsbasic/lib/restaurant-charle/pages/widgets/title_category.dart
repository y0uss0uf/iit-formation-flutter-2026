import 'package:flutter/material.dart';

class TitleCategory extends StatelessWidget {
  TitleCategory({
    super.key,
    required this.title,
    required this.seeAll,
    required this.onPressed,
  });

  final String title;
  final String seeAll;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24,
            letterSpacing: .4,
            fontWeight: FontWeight.w600,
          ),
        ),

        GestureDetector(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Text(
                  seeAll,
                  style: TextStyle(
                    color: Color(0XFFae4d4d),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward_rounded, color: Color(0XFFae4d4d)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
