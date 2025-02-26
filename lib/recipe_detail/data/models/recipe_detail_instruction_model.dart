import 'dart:convert';

class RecipeDetailInstructionModel {
  final String text;
  final int order;

  RecipeDetailInstructionModel({required this.text, required this.order});

  factory RecipeDetailInstructionModel.fromJson(Map<String, dynamic> json) {
    return RecipeDetailInstructionModel(
      text: json['text'],
      order: json['order'],
    );
  }
}
