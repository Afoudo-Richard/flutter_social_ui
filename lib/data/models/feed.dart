import 'package:social_ui/data/models/user.dart';

class Feed {
  final User user;
  final String image;
  final String title;
  final String timeUploaded;
  final bool isLiked;

  Feed({
    required this.user,
    required this.image,
    required this.title,
    required this.timeUploaded,
    required this.isLiked,
  });
}

// current user

final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg', profession: "photographer");

// users

final User austin =
    User(id: 1, name: 'Austin', imageUrl: 'assets/images/austin.jpg', profession: "Tailor");

final User james =
    User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg', profession: "Boxer");

final User jessica =
    User(id: 3, name: 'Jessica', imageUrl: 'assets/images/jessica.jpg', profession: "Designer");

final User john = User(id: 4, name: 'John', imageUrl: 'assets/images/john.jpg', profession: "Artistic guide");

final User kaith =
    User(id: 5, name: 'Kaith', imageUrl: 'assets/images/kaith.jpg', profession: "photographer");

final User larry =
    User(id: 6, name: 'Larry', imageUrl: 'assets/images/larry.jpg', profession: "photographer");

final User olivia =
    User(id: 7, name: 'Olivia', imageUrl: 'assets/images/olivia.jpg', profession: "photographer");

final User paul = User(id: 8, name: 'Paul', imageUrl: 'assets/images/paul.jpg', profession: "photographer");

final User steve =
    User(id: 9, name: 'Steve', imageUrl: 'assets/images/steve.jpg', profession: "photographer");

// stories users
List<User> stories = [olivia, paul, steve, john, james, austin];

// Feeds
List<Feed> feeds = [
  Feed(
    user: austin,
    image: 'assets/feed_images/MrArc.jpg',
    title: "paradiso senze",
    timeUploaded: "23 minutes ago",
    isLiked: false,
  ),
  Feed(
    user: james,
    image: 'assets/feed_images/goal.jpg',
    title: "Yes you can",
    timeUploaded: "1 hour 20 minutes ago",
    isLiked: false,
  ),
  Feed(
    user: kaith,
    image: 'assets/feed_images/sarah_jumping.jpg',
    title: "Yes you can",
    timeUploaded: "2 hours ago",
    isLiked: false,
  ),
];
