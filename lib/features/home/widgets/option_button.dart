import 'package:flutter/material.dart';

import '../../../theme/src/app_colors.dart';

class OptionButton extends StatelessWidget {
  final String label;
  final String optionLetter;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionButton({
    required this.label,
    required this.optionLetter,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          decoration: BoxDecoration(
            color: AppColors.button,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? AppColors.secondary : AppColors.button,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? AppColors.secondary : AppColors.button,
                  border: Border.all(
                    color: isSelected ? AppColors.secondary : AppColors.white,
                  ),
                ),
                child: Center(
                  child: Text(
                    optionLetter,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
