import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final String testo;
  final Widget page;
  const BlueButton({required this.testo, required this.page, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        ),
      },
      child: Text(testo),
    );
  }
}
