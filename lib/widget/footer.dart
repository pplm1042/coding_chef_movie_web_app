import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.facebook, color: Colors.white),
                onPressed: () {
                  // Add action for Facebook icon
                },
              ),
              IconButton(
                icon: const Icon(Icons.link, color: Colors.white),
                onPressed: () {
                  // Add action for link icon
                },
              ),
              IconButton(
                icon: const Icon(Icons.image, color: Colors.white),
                onPressed: () {
                  // Add action for image icon
                },
              ),
              IconButton(
                icon: const Icon(Icons.description, color: Colors.white),
                onPressed: () {
                  // Add action for description icon
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "© 2024 MovieTMDBWeb. All rights reserved",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  // Add action for "About Us"
                },
                child: const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add action for "Privacy Policy"
                },
                child: const Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Add action for "Terms of Service"
                },
                child: const Text(
                  "Terms of Service",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
