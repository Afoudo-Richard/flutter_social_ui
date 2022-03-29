import 'package:flutter/material.dart';
import 'package:social_ui/data/models/feed.dart';
import 'package:social_ui/presentation/pages/home/widgets/categories_selector.dart';
import 'package:social_ui/presentation/pages/home/widgets/short_stories_listing.dart';
import 'package:social_ui/presentation/widgets/custom_drawer.dart';
import 'package:social_ui/presentation/widgets/feed_item.dart';
import 'package:social_ui/presentation/widgets/item_container.dart';
import 'package:social_ui/presentation/widgets/screen_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: screenAppBar(title: 'Settings'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: ItemContainer(
                  child: const Icon(
                    Icons.usb_rounded,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(10.0),
                ),
                title: Text(
                  "Edit profile",
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
