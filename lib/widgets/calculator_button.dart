import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final double size;
  final Color color;
  final TextStyle textStyle;
  final Gradient? gradient;

  const CalculatorButton({
    required this.label,
    required this.size,
    required this.color,
    required this.onTap,
    this.gradient,
    this.textStyle = const TextStyle(fontWeight: FontWeight.bold),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double br = 9;

    // Определение цвета текста
    Color textColor;
    if (label == '/' || label == '.' || label == '-' || label == '+' || label == '=' || label == 'x') {
      // Если символ относится к операциям, устанавливаем цвет secondaryContainer
      textColor = Theme.of(context).colorScheme.secondaryContainer;
    } else {
      // Иначе используем цвет onBackground
      textColor = Theme.of(context).colorScheme.onBackground;
    }

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(br),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(br),
          color: color,
        ),
        child: Center(
          child: Text(
            label,
            style: textStyle.merge(
              Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
