import 'package:calculator/screens/calender.dart';
import 'package:calculator/screens/profilepage.dart';
import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            buildDashboardTile(
              color: Colors.red,
              icon: Icons.analytics,
              label: "Analytics",
              onTap: () {},
            ),
            buildDashboardTile(
              color: Colors.blue,
              icon: Icons.account_circle,
              label: "Profile",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            buildDashboardTile(
              color: Colors.green,
              icon: Icons.notifications,
              label: "Notifications",
              onTap: () {},
            ),
            buildDashboardTile(
              color: Colors.orange,
              icon: Icons.settings,
              label: "Settings",
              onTap: () {},
            ),
            buildDashboardTile(
              color: Colors.purple,
              icon: Icons.calendar_today,
              label: "Calendar",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
            ),
            buildDashboardTile(
              color: Colors.teal,
              icon: Icons.shopping_cart,
              label: "Orders",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardTile(
      {required Color color,
      required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Colors.white,
            ),
            SizedBox(height: 8.0),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
