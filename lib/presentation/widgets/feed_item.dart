import 'package:flutter/material.dart';
import 'package:social_ui/data/models/feed.dart';
import 'package:social_ui/presentation/pages/profile/profile_page.dart';
import 'package:social_ui/presentation/widgets/custom_button.dart';
import 'package:social_ui/presentation/widgets/item_container.dart';

class FeedItem extends StatelessWidget {
  const FeedItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Feed item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35.0, left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ProfilePage(user: item.user),
                        ),
                      );
                    },
                    child: ItemContainer(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage(item.user.imageUrl),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    item.user.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Builder(builder: (_) {
            final double height = MediaQuery.of(context).size.height * 0.4;
            return ItemContainer(
              height: height,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.7,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(item.image),
                    ),
                  ),
                  Container(
                    height: height * 0.3,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10.0),
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              item.timeUploaded,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        CustomButton(
                          
                          onTap: () {},
                          
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 18,
                              ),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02),
                              const Text(
                                "Like",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
