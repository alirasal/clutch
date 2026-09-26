import 'package:clutch/view/dashboard/dashboard.dart';
import 'package:clutch/view/games/game.dart';
import 'package:clutch/view/profile/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  final List<Widget> screens = [MyDashboardView(), Game(), Game(), Profile()];

  static const Color primary = Colors.black;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Uses the active theme's surface color automatically
    final unselectedColor = theme.colorScheme.onSurface.withOpacity(0.5);

    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(index: currentIndex, children: screens),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: theme.dividerColor.withOpacity(0.15)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(
                  theme.brightness == Brightness.dark ? 0.3 : 0.08,
                ),
                blurRadius: 20,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.shifting,
              elevation: 0,
              backgroundColor: Colors.white,

              selectedItemColor: primary,
              unselectedItemColor: unselectedColor,

              selectedFontSize: 12,
              unselectedFontSize: 12,

              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),

              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },

              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.amberAccent,
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.sports_outlined),
                  activeIcon: Icon(Icons.sports),
                  label: "Games",
                  backgroundColor: Colors.blue,
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.sports_football_outlined),
                  activeIcon: Icon(Icons.sports_football),
                  label: "Venues",
                  backgroundColor: Colors.blueGrey,
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  activeIcon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
