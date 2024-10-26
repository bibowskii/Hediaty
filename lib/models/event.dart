class Event {
  final String id;
  final String name;
  final DateTime date;
  final String location;
  final String description;
  final String userId;

  Event({
    required this.id,
    required this.name,
    required this.date,
    required this.location,
    required this.description,
    required this.userId,
  });
}