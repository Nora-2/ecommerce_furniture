import 'package:flutter/material.dart';
import 'package:furniture_app/featuers/order/presentation/views/detail_screen.dart';
import 'package:furniture_app/featuers/order/presentation/views/order_screen.dart';
import 'package:furniture_app/featuers/profile/presentation/views/profile_screen.dart';
import 'base_controller.dart';

class OrderController extends BaseController{



  void goToProfile(BuildContext context){
    Navigator.of(context).pushReplacementNamed(ProfileScreen.id);
  }

  void goToDetail(BuildContext context){
    Navigator.of(context).pushNamed(DetailScreen.id);
  }
  void goToOrder(BuildContext context){
    Navigator.of(context).popAndPushNamed(OrderScreen.id);
  }

}