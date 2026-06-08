class ActivityModel {
  final String title;
  final String description;
  final String time;
  final String type; // 'sale', 'user', 'alert'

  ActivityModel({
    required this.title,
    required this.description,
    required this.time,
    required this.type,
  });
}
