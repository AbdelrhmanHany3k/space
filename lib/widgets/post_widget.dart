import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String authorName;
  final String authorImage;
  final String timeAgo;
  final String postImage;

  const PostWidget({
    super.key,
    required this.authorName,
    required this.authorImage,
    required this.timeAgo,
    required this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(authorImage),
          ),
          title: Text(
            authorName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Row(
            children: [
              Text('$timeAgo . ', style: const TextStyle(fontSize: 12)),
              const Icon(Icons.public, size: 14, color: Colors.grey),
            ],
          ),
          trailing: const Icon(Icons.more_horiz),
        ),
        SizedBox(
          width: double.infinity,
          height: 250,
          child: Image.asset(
            postImage,
            fit: BoxFit.contain,
          ),
        ),
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, size: 24),
              SizedBox(width: 16),
              Icon(Icons.mode_comment_outlined, size: 24),
              SizedBox(width: 16),
              Icon(Icons.send_outlined, size: 24),
              Spacer(),
              Icon(Icons.bookmark_border, size: 24),
            ],
          ),
        ),
        const Divider(thickness: 2, color: Color(0xFFEEEEEE)),
      ],
    );
  }
}