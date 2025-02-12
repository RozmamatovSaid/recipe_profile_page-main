class OnBoardingModel {
  final int id;
  final String title;
  final String subtitle;
  final String picture;
  final int order;

  OnBoardingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.order,
  });

  factory OnBoardingModel.fromJson(Map<String, dynamic> json) {
    return OnBoardingModel(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      picture: json['picture'],
      order: json['order'],
    );
  }
}
