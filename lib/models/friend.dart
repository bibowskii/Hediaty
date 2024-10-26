class Friend {
  final String userId;
  final String friendId;
  Friend({
    required this.userId,
    required this.friendId,
  });


}


Friend goollasha = new Friend(
    userId: 'bibo',
friendId : 'goollasha');

Friend noosa = new Friend(
    userId: 'bibo',
    friendId : 'noosa');

Friend joe = new Friend(
    userId: 'bibo',
    friendId : 'joe');

List<String> friendList = [goollasha.friendId,joe.friendId,noosa.friendId];


