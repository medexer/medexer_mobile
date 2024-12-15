import 'package:flutter/material.dart';

class DexerIconBadge extends StatelessWidget {
  const DexerIconBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/icons/icon_medexer.png',
      width: 35,
      fit: BoxFit.cover,
    );
  }
}
