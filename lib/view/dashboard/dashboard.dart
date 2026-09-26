import 'package:clutch/view/auth/login.dart';
import 'package:clutch/widgets/dashboard-drawer.dart'; // Ensure drawerItems widget is exported here
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDashboardView extends StatelessWidget {
  const MyDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            // Modernized Header with User Profile Layout
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.amber),
              accountName: Text(
                "Clutch",
                style: GoogleFonts.aBeeZee(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              accountEmail: const Text(
                "Book your turf",
                style: TextStyle(color: Colors.black87),
              ),
            ),

            // Drawer Navigation Items (Using DrawerItems with proper PascalCase)
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                children: [
                  DrawerItems(
                    name: 'My Bookings',
                    leadingIcon: Icons.calendar_month,
                    nav: () {
                      Navigator.pop(context); // Closes drawer on tap
                    },
                  ),
                  DrawerItems(
                    name: 'Explore Turfs',
                    leadingIcon: Icons.sports_cricket,
                    nav: () {
                      Navigator.pop(context);
                    },
                  ),
                  DrawerItems(
                    name: 'My Wallet',
                    leadingIcon: Icons.account_balance_wallet_outlined,
                    nav: () {
                      Navigator.pop(context);
                    },
                  ),
                  DrawerItems(
                    name: 'Settings',
                    leadingIcon: Icons.settings_outlined,
                    nav: () {
                      Navigator.pop(context);
                    },
                  ),
                  DrawerItems(
                    name: 'Help & Support',
                    leadingIcon: Icons.help_outline,
                    nav: () {
                      Navigator.pop(context);
                    },
                  ),

                  DrawerItems(
                    name: 'Report bug',
                    leadingIcon: Icons.bug_report,
                    nav: () {
                      Navigator.pop(context);
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 8.0,
                    ),
                    child: Material(
                      color: Colors.red.withValues(
                        alpha: 0.08,
                      ), // Light red tint container
                      borderRadius: BorderRadius.circular(12),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        splashColor: Colors.red.withValues(alpha: 0.15),
                        highlightColor: Colors.red.withValues(alpha: 0.08),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.logout_rounded,
                                size: 22,
                                color: Colors.red,
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16,
                                color: Colors.redAccent,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Clutch",
          style: GoogleFonts.aBeeZee(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
