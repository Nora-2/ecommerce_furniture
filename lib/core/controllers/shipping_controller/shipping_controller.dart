import 'package:flutter/material.dart';
import 'package:furniture_app/core/controllers/base_controller.dart';
import 'package:furniture_app/featuers/profile/presentation/views/profile_screen.dart';
import 'package:furniture_app/featuers/shipping/presentation/screens/add_address_screen.dart';
import '../../../featuers/profile/manger/user_model.dart';

class ShippingController extends BaseController {
  User? user;
  void Function(void Function())? updater;

  ShippingController({required this.updater, this.user});

  void goToProfile(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(ProfileScreen.id);
  }

  void goAddAddressScreen(BuildContext context, int i) {
    Navigator.pushNamed(
      context,
      AddAddress.id,
      arguments: i,
    );
  }
}
