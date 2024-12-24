import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/src/app_colors.dart';
import '../../../theme/src/app_icons.dart';
import '../controllers/home_controller.dart';
import 'stroll_screen.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Center(
          child: state.when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text(error.toString()),
            data: (data) => StrollScreen(room: data, height: height, width: width),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.all(16),
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const BottomNavItem(
              icon: AppIcons.pokerCards,
              isSelected: true,
            ),
            Badge(
              offset: const Offset(-4, 4),
              backgroundColor: AppColors.secondary,
              label: Container(
                height: 8,
                width: 10,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: AppColors.secondary,
                ),
              ),
              child: const BottomNavItem(
                icon: AppIcons.fire,
                isSelected: false,
              ),
            ),
            const Stack(
              children: [
                Badge(
                  offset: Offset(-8, 8),
                  backgroundColor: AppColors.secondary,
                  label: Text(
                    '10',
                    style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  child: BottomNavItem(
                    icon: AppIcons.chat,
                    isSelected: false,
                  ),
                ),
              ],
            ),
            const BottomNavItem(
              icon: AppIcons.user,
              isSelected: false,
            ),
          ],
        ),
      );
}
