import 'package:flutter/material.dart';
import 'package:social_ui/data/models/feed.dart';
import 'package:social_ui/presentation/pages/home/widgets/categories_selector.dart';
import 'package:social_ui/presentation/pages/home/widgets/short_stories_listing.dart';
import 'package:social_ui/presentation/widgets/custom_drawer.dart';
import 'package:social_ui/presentation/widgets/feed_item.dart';
import 'package:social_ui/presentation/widgets/screen_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: screenAppBar(title: 'My Feed'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategoriesSelector(),
            ShortStoriesListing(),
            ...feeds.map((Feed item) {
              return FeedItem(
                item: item,
              );
            }),
          ],
        ),
      ),
    );
  }
}
