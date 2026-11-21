import 'package:flutter/material.dart';
import 'package:projec_t/widgets/create_story_card.dart' show CreateStoryCard;
import 'package:projec_t/widgets/post_widget.dart' show PostWidget;
import 'package:projec_t/widgets/story_card.dart' show StoryCard;

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Facebook',
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_circle, color: Colors.black, size: 26),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.black, size: 26),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_bubble, color: Colors.black, size: 24),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFF1877F2),
            labelColor: Color(0xFF1877F2),
            unselectedLabelColor: Color(0xFF898F9C),
            tabs: [
              Tab(icon: Icon(Icons.home_filled)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.storefront)),
              Tab(icon: Icon(Icons.person_outline)),
              Tab(icon: Icon(Icons.notifications_none)),
              Tab(
                icon: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage("assets/images/096ff7fd728e880bca931a69a1417a5f.jpg"),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/096ff7fd728e880bca931a69a1417a5f.jpg"),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "What's in Your Mind?",
                      style: TextStyle(color: Color(0xFF898F9C), fontSize: 16),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.photo_library, color: Colors.green),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1.5, color: Color(0xFFEEEEEE)),


            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                children: const [
                  CreateStoryCard(
                    profileImage: "assets/images/096ff7fd728e880bca931a69a1417a5f.jpg",
                  ),
                  SizedBox(width: 10),
                  StoryCard(
                    userImage: 'assets/images/model1.jpg',
                    storyImage: 'assets/images/image1.jpg',
                  ),
                  SizedBox(width: 10),
                  StoryCard(
                    userImage: 'assets/images/model2.jpg',
                    storyImage: 'assets/images/image2.jpg',
                  ),
                  SizedBox(width: 10),
                  StoryCard(
                    userImage: 'assets/images/model3.jpg',
                    storyImage: 'assets/images/image3.jpg',
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2, color: Color(0xFFEEEEEE)),


            const PostWidget(
              authorName: 'Route',
              authorImage: 'assets/images/429820590_791043733050594_2437304548159507703_n.jpg',
              timeAgo: '8h',
              postImage: 'assets/images/394207767_709508957870739_4789263993603935944_n.jpg',
            ),
          ],
        ),
      ),
    );
  }
}