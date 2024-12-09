import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTop;
  final String text;

  const MyButton({
    super.key,
    required this.text,
    required this.onTop,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            // color: Theme.of(context).colorScheme.primary,
            color: Colors.pink,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              // color: Theme.of(context).colorScheme.inversePrimary,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
