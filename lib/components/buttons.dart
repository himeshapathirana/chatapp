import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const Buttons({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 105.0),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
