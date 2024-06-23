class Event {
  final String type;
  final String title;
  final String date;
  final String time;
  final String location;
  final String imageUrl;
  final int buddies;

  Event({
    required this.type,
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    required this.imageUrl,
    required this.buddies,
  });
}
