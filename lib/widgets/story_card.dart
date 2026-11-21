import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String userImage;
  final String storyImage;

  const StoryCard({
    super.key,
    required this.userImage,
    required this.storyImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(storyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Color(0xFF1877F2),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(userImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}