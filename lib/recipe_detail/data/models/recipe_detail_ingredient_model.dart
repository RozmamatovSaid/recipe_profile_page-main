class RecipeDetailIngredientModel {
  final String amount;
  final String name;
  final int order;

  RecipeDetailIngredientModel({
    required this.amount,
    required this.name,
    required this.order,
  });

  factory RecipeDetailIngredientModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailIngredientModel(
      amount: json['amount'],
      name: json['name'],
      order: json['order'],
    );
  }
}
