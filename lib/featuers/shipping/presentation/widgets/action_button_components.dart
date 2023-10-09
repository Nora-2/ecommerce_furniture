import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/constants/colors.dart';
import 'package:furniture_app/core/services/constants/svg_icons.dart';
import 'package:furniture_app/featuers/shipping/presentation/screens/add_address_screen.dart';

class WidgetFloatingActionButton extends StatelessWidget {
  const WidgetFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      backgroundColor: AppColors.cFFFFFF,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddAddress()),
        );
      }, //=> controller.goAddAddressScreen(context),
      child: SvgIcon.add,
    );
  }
}
