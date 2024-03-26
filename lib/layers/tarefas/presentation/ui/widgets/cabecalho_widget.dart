import 'package:flutter/material.dart';

class CabecalhoWidget extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final Color iconeColor;

  const CabecalhoWidget({
    super.key,
    required this.icon,
    required this.titulo,
    required this.iconeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: iconeColor,
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
