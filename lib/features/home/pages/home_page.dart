import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/src/app_icons.dart';
import '../controllers/home_controller.dart';
import 'stroll_screen.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Center(
          child: state.when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => Text(error.toString()),
            data: (data) => StrollScreen(room: data),
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
              isSelected: false,
            ),
            const BottomNavItem(
              icon: AppIcons.fire,
              isSelected: true,
            ),
            Stack(
              children: [
                const BottomNavItem(
                  icon: AppIcons.chat,
                  isSelected: false,
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '10',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
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
