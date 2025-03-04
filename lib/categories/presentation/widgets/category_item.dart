import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    this.isMain = false,
  });

  final String image, title;
  final bool isMain;

  @override
  Widget build(BuildContext context) {
    final categoryTitle = Text(
      title,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
    final categoryImage = ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Image.network(
        image,
        width: isMain ? 356.w : 159.w,
        height: isMain ? 150.h : 145.h,
        fit: BoxFit.cover,
      ),
    );
    return Column(
      spacing: isMain ? 3 : 6,
      children: [
        isMain ? categoryTitle : categoryImage,
        isMain ? categoryImage : categoryTitle,
      ],
    );
  }
}
