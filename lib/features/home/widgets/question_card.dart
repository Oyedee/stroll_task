import 'package:flutter/material.dart';

import '../../../theme/src/app_colors.dart';
import '../../../theme/src/app_icons.dart';
import '../models/stroll/stroll_question.dart';
import 'option_button.dart';

class QuestionCard extends StatelessWidget {
  final Question question;

  const QuestionCard({
    required this.question,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Author Info
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(question.author.profileImage),
                ),
                const SizedBox(width: 12),
                Text(
                  '${question.author.name}, ${question.author.age}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Question
            Text(
              question.content.question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),

            // Quote
            Text(
              '"${question.content.quote}"',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 24),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              childAspectRatio: 2.5,
              children: List.generate(
                question.content.options.length,
                (index) => OptionButton(
                  label: question.content.options[index].text,
                  optionLetter: String.fromCharCode(65 + index),
                  isSelected: index == 3,
                  onTap: () {
                    // Handle option selection
                  },
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Bottom Text
                Text(
                  'Pick your option.\nSee who has a similar mind.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.secondary,
                      width: 2.2,
                    ),
                  ),
                  child: AppIcons.icon(AppIcons.mic),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.secondary,
                      width: 2.2,
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: AppColors.primary,
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
