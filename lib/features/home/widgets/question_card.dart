import 'package:flutter/material.dart';

import '../../../theme/src/app_colors.dart';
import '../../../theme/src/app_icons.dart';
import '../models/stroll/stroll_question.dart';
import 'option_button.dart';

class QuestionCard extends StatefulWidget {
  final Question question;

  const QuestionCard({
    required this.question,
    super.key,
  });

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Author Info
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(widget.question.author.profileImage),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.question.author.name}, ${widget.question.author.age}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        widget.question.content.question,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 64),
              child: Text(
                '"${widget.question.content.quote}"',
                style: const TextStyle(
                  color: Color.fromRGBO(203, 201, 255, 0.7),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2.5,
              children: List.generate(
                widget.question.content.options.length,
                (index) => OptionButton(
                  label: widget.question.content.options[index].text,
                  optionLetter: String.fromCharCode(65 + index),
                  isSelected: index == 0,
                  onTap: () {},
                ),
              ),
            ),

            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Bottom Text
                const Text(
                  'Pick your option.\nSee who has a similar mind.',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
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
                  child: AppIcons.icon(AppIcons.mic, size: 28),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.secondary,
                    ),
                  ),
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.primary,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
