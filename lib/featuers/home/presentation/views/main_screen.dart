import 'package:flutter/material.dart';
import 'package:furniture_app/core/controllers/main_controller.dart';
import 'package:furniture_app/featuers/favourite/presentation/views/favorite_screen.dart';
import 'package:furniture_app/featuers/home/presentation/views/home_screen.dart';
import 'package:furniture_app/featuers/home/presentation/widgets/bottom_navigation_bar.dart';
import 'package:furniture_app/featuers/notification/presentation/views/notification_screen.dart';
import 'package:furniture_app/featuers/profile/presentation/views/profile_screen.dart';

class MainScreen extends StatefulWidget {
  static const id = "/main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final MainController controller;
  @override
  void initState() {
    controller = MainController(updater: setState, pageController: PageController());
    super.initState();
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Main");
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) => controller.buttonPageView(index),
        children: const [
          HomeScreen(),
          FavoriteScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: AppNavigationBar(controller: controller),
    );
  }
}
