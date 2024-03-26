import 'package:flutter/material.dart';

class CabecalhoWidget extends StatelessWidget {
  final IconData icon;
  final String titulo;

  const CabecalhoWidget({
    super.key,
    required this.icon,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
        ),
        const SizedBox(width: 12),
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
