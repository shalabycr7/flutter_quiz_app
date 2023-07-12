import 'package:flutter/material.dart';
import 'package:quizizz/shared/category_container.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CategoryCont(
              imagePath: 'assets/images/sports.jpg',
              title: 'Sports',
            ),
            CategoryCont(
              imagePath: 'assets/images/history_panel.jpg',
              title: 'History',
            ),
            CategoryCont(
              imagePath: 'assets/images/general_panel.jpg',
              title: 'General Knowledge',
            ),
          ],
        ),
      ),
    );
  }
}
