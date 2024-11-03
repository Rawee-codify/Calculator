import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile picture
              const Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      'assets/profile.jpg'), // Add your profile image in assets folder
                ),
              ),
              const SizedBox(height: 16.0),
              // Name and title
              const Center(
                child: Text(
                  "John Doe",
                  style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),
              Center(
                child: Text(
                  "Mobile Developer",
                  style: TextStyle(fontSize: 18.0, color: Colors.grey[700]),
                ),
              ),
              SizedBox(height: 32.0),
              // Sections
              buildProfileSection(
                title: "User Information",
                color: Colors.lightBlue[100]!,
                content: "Email: john.doe@example.com\nPhone: +1 234 567 8901",
              ),
              buildProfileSection(
                title: "Settings",
                color: Colors.lightGreen[100]!,
                content: "Notification: Enabled\nDark Mode: Off",
              ),
              buildProfileSection(
                title: "Activity",
                color: Colors.orange[100]!,
                content: "Projects: 10\nTasks Completed: 150",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileSection(
      {required String title, required Color color, required String content}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text(
            content,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
