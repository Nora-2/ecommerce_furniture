import 'package:furniture_app/featuers/profile/manger/user_model.dart';
import 'package:furniture_app/core/services/data/database/address.dart';

User? currentUser;

final user1 = User(
  userId: "0",
  name: "Bruno Fernandes",
  email: "bruno@gmail.com",
  password: "a",
  createdAt: "06.05.2023",
  modifyAt: "06.05.2023",
  devices: [],
  cards: <int>[],
  favourites: <int>[],
  addresses: userAddresses,
);
final user2 = User(
  userId: "1",
  name: "Nora Mohamed",
  email: "Nora@gmail.com",
  password: "nora",
  createdAt: "06.05.2023",
  modifyAt: "06.05.2023",
  devices: [],
  cards: <int>[],
  favourites: <int>[],
  addresses: userAddresses,
);

final usersList = <User>[
  user1,
  user2,
];
