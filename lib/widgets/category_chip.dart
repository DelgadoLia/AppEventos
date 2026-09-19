import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String texto;
  final bool seleccionado;
  final VoidCallback onTap;

  const new({
    super.key,
    required this.onTap,
    required this.seleccionado,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(right: 8),
      child: ChoiceChip(label: Text(texto), selected: seleccionado, onSelected: (_) => onTap(),),
    );
  }
}