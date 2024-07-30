import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottNav extends StatelessWidget {

  void Function(int)? onTabChange;

  BottNav({super.key
  , required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: GNav(
        onTabChange: onTabChange,
        tabBorderRadius: 10,
        gap: 10,
        tabBackgroundColor: Theme.of(context).colorScheme.secondary,
        mainAxisAlignment: MainAxisAlignment.center,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.camera,
            text: 'Find Lens',
          ),
        ],
      ),
    );
  }
}
