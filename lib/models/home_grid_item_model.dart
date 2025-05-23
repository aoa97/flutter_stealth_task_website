class HomeGridItemModel {
  final String title;
  final String time;
  final String image;
  final bool? isMinUsers;

  HomeGridItemModel({
    required this.title,
    required this.time,
    required this.image,
    this.isMinUsers = false,
  });
}
