import 'package:flutter/material.dart';

class CustomBottomNavItemWidget extends StatelessWidget {
  final IconData icon;
  final IconData iconSelected;
  final String label;
  final bool isSelected;
  final ColorScheme colorScheme;

  const CustomBottomNavItemWidget({
    super.key,
    required this.icon,
    required this.iconSelected,
    required this.label,
    required this.isSelected,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: isSelected
          ? BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(10),
            )
          : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSelected ? iconSelected : icon,
            color: isSelected ? Colors.white : colorScheme.primary,
          ),
          if (isSelected && label.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 3),
              child: Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
    );
  }
}