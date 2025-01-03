import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/src/app_colors.dart';
import '../../../theme/src/app_icons.dart';
import '../models/stroll/stroll_question.dart';
import '../widgets/question_card.dart';

class StrollScreen extends ConsumerWidget {
  final StrollRoom room;
  final double height;
  final double width;
  const StrollScreen({
    required this.room,
    required this.height,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppIcons.backgroundPicture),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: SizedBox(
                height: height,
                width: width,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(15, 17, 21, 0),
                    Color.fromRGBO(13, 14, 18, 1),
                    Color.fromRGBO(11, 12, 15, 1),
                    Color.fromRGBO(9, 11, 13, 1),
                  ],
                  stops: [0.4, 0.6, 0.7, 1.0],
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Header
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                room.roomInfo.name,
                                style: const TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.secondary,
                                  shadows: [
                                    Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 20,
                                      color: Color.fromRGBO(0, 0, 0, 0.2),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                size: 24,
                                color: Color.fromRGBO(179, 173, 246, 1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.timer_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                room.roomInfo.timeRemaining,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(width: 20),
                              const Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                '${room.roomInfo.activeUsers}',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),

                    const Spacer(),

                    // Question Card
                    QuestionCard(question: room.questions[0]),

                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}

class BottomNavItem extends StatelessWidget {
  final String icon;
  final bool isSelected;

  const BottomNavItem({
    required this.icon,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondary.withOpacity(0.2) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: AppIcons.icon(
          icon,
          size: 24,
        ),
      );
}
