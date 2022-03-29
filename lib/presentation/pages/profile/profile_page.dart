import 'package:flutter/material.dart';
import 'package:social_ui/data/models/user.dart';
import 'package:social_ui/presentation/widgets/custom_button.dart';
import 'package:social_ui/presentation/widgets/custom_drawer.dart';
import 'package:social_ui/presentation/widgets/item_container.dart';
import 'package:social_ui/presentation/widgets/screen_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      appBar: screenAppBar(title: 'Profiles'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    ItemContainer(
                      height: 100,
                      width: 100,
                      child: Image(
                        image: AssetImage(user.imageUrl),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Text(
                      user.name,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.006,
                    ),
                    Text(
                      user.profession,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      onTap: () {},
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Expanded(
                    child: CustomButton(
                      color: Colors.grey,
                      onTap: () {},
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: const Text(
                        "Message",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileInfoItem(
                    itemNumber: "1,420",
                    itemLabel: "Followers",
                  ),
                  ProfileInfoItem(
                    itemNumber: "112",
                    itemLabel: "Post",
                  ),
                  ProfileInfoItem(
                    itemNumber: "84",
                    itemLabel: "Following",
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              // Expanded(
              //   child: GridView.count(
              //     crossAxisCount: 2,
              //     children: [
              //       ItemContainer(
              //         height: 100,

              //       )
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}



class ProfileInfoItem extends StatelessWidget {
  ProfileInfoItem({
    Key? key,
    required this.itemLabel,
    required this.itemNumber,
  }) : super(key: key);

  String itemNumber;
  String itemLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          itemNumber,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.006,
        ),
        Text(
          itemLabel,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
