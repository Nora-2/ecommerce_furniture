import 'package:flutter/material.dart';
import 'package:furniture_app/core/controllers/favorite_controller.dart';
import 'package:furniture_app/core/services/constants/colors.dart';
import 'package:furniture_app/core/services/constants/strings.dart';
import 'package:furniture_app/core/services/theme/text_styles.dart';


class CartButton extends StatelessWidget {
  const CartButton({
    super.key,
    required this.controller,
  });

  final FavoriteController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => controller.goToCongrats(context),
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shadowColor: AppColors.c303030,
        backgroundColor: AppColors.c303030,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: const Size(800, 60),
      ),
      child: Text(
        Strings.addAll.text,
        style: AppTextStyles.nunitoSansSemiBold18.copyWith(
          color: AppColors.cFFFFFF,
        ),
      ),
    );
  }
}
