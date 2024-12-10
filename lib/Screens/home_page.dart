import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_members.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';
import 'package:toku/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0xffef9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff528032),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const FamilyMembersPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff7c40a1),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0xff46a5ca),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
