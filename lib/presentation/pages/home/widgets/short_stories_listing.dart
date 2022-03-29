import 'package:flutter/material.dart';
import 'package:social_ui/data/models/feed.dart';
import 'package:social_ui/presentation/widgets/item_container.dart';

class ShortStoriesListing extends StatefulWidget {
  const ShortStoriesListing({
    Key? key,
  }) : super(key: key);

  @override
  State<ShortStoriesListing> createState() => _ShortStoriesListingState();
}

class _ShortStoriesListingState extends State<ShortStoriesListing> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Stories",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'View all',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: stories.length + 1,
            itemBuilder: (_, int index) {
              final isfirstItem = index == 0;
              final item = isfirstItem ? null : stories[index - 1];

              return GestureDetector(
                child: isfirstItem
                    ? ItemContainer(
                      margin: const EdgeInsets.only(right: 15),
                        height: 60,
                        width: 60,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : ItemContainer(
                        margin: const EdgeInsets.only(right: 15),
                        height: 60,
                        width: 60,
                        child: Image(
                          image: AssetImage(item!.imageUrl),
                        ),
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}
