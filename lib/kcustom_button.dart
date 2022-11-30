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
