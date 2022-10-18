import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Hero(
          tag: 'ic_logo',
          child: Image.asset(
            'assets/icons/ic_launcher_icon.png',
            height: 28,
          ),
        ),
        const SizedBox(width: 4),
        const Text(
          'Fluxstore',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
