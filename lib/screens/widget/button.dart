import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String testo;
  final Widget page;
  final Color color;
  const Button(
      {required this.testo, required this.page, required this.color, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          side: const BorderSide(color: Colors.blue),
          elevation: 0,
        ),
        onPressed: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ),
          ),
        },
        child: Text(testo),
      ),
    );
  }
}
