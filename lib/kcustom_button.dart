import 'package:flutter/material.dart';

class KCustomButton extends StatelessWidget {
  KCustomButton({super.key, this.borderRadius, required onPressed});

  BorderRadiusGeometry? borderRadius;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(30),
          ),
        ),
      ),
      onPressed: onPressed,
      child: const Text('Entrar'),
    );
  }
}

class KCustomtext extends StatelessWidget {
  final String text;

  const KCustomtext({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 23, color: Colors.red));
  }
}
