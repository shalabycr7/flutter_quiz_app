import 'package:flutter/material.dart';
import 'package:quizizz/shared/category_container.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CategoryContainer(
              imagePath: 'assets/images/sports.jpg',
              title: 'Biology',
            ),
            CategoryContainer(
              imagePath: 'assets/images/history_panel.jpg',
              title: 'History',
            ),
            CategoryContainer(
              imagePath: 'assets/images/general_panel.jpg',
              title: 'Maths',
            ),
          ],
        ),
      ),
    );
  }
}
