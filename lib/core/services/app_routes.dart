import 'package:flutter/material.dart';
import 'package:furniture_app/core/weidgets/congrats_screen.dart';
import 'package:furniture_app/featuers/cart/presentation/views/cart_screen.dart';
import 'package:furniture_app/featuers/checkout/presentation/views/check_out_screen.dart';
import 'package:furniture_app/featuers/favourite/presentation/views/favorite_screen.dart';
import 'package:furniture_app/featuers/home/presentation/views/main_screen.dart';
import 'package:furniture_app/featuers/notification/presentation/views/notification_screen.dart';
import 'package:furniture_app/featuers/order/presentation/views/order_screen.dart';
import 'package:furniture_app/featuers/payment/presentation/views/payment_methods_screen.dart';
import 'package:furniture_app/featuers/product/manger/product_model.dart';
import 'package:furniture_app/featuers/product/presentation/views/product_screen.dart';
import 'package:furniture_app/featuers/profile/presentation/views/profile_screen.dart';
import 'package:furniture_app/featuers/review/presentation/views/review_screen.dart';
import 'package:furniture_app/featuers/setting/presentation/views/setting_screen.dart';
import 'package:furniture_app/featuers/shipping/presentation/screens/shipping_screen.dart';
import 'package:furniture_app/featuers/shipping/presentation/screens/update_address_screen.dart';
import 'package:furniture_app/featuers/sign-in-up/presentation/views/sign_up_screen.dart';
import 'package:furniture_app/featuers/sign-in-up/presentation/views/sing_in_screen.dart';
import 'package:furniture_app/featuers/splash/presentation/views/boarding_screen.dart';

bool isAuth = false;

class AppRoutes {
  AppRoutes._();

  static String? get initialRoute {
    if(!isAuth) {
      return BoardingScreen.id;
    } else {
      return MainScreen.id;
    }
    
  }

  static final routes = {
    settingScreen.id:(context)=>const settingScreen(),
    paymentScreen.id: (context) => const paymentScreen(),
    BoardingScreen.id: (context) => const BoardingScreen(),
    CartScreen.id: (context) => const CartScreen(),
    CheckOutScreen.id: (context) => const CheckOutScreen(),
    CongratsScreen.id: (context) => const CongratsScreen(),
    FavoriteScreen.id: (context) => const FavoriteScreen(),
    MainScreen.id: (context) => const MainScreen(),
    NotificationScreen.id: (context) => const NotificationScreen(),
    OrderScreen.id: (context) => const OrderScreen(),
    ProductScreen.id: (context) => const ProductScreen(),
    ProfileScreen.id: (context) => const ProfileScreen(),
    ReviewScreen.id: (context) => const ReviewScreen(),
    ShippingScreen.id: (context) => const ShippingScreen(),
    SignUpScreen.id: (context) => const SignUpScreen(),
    SignInScreen.id: (context) => const SignInScreen(),
    AddressUpdater.id: (context) => const AddressUpdater(),
  };

  static void pushReplaceSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, SignInScreen.id);
  }

  static void pushReplaceSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(SignUpScreen.id);
  }

  static void pushReplaceHome(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MainScreen.id);
  }

  static void pushCart(BuildContext context) {
    Navigator.of(context).pushNamed(CartScreen.id);
  }

  static void pushProduct(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
  }

  static void pushAddressUpdate(BuildContext context, int item) {
    Navigator.of(context).pushNamed(AddressUpdater.id, arguments: item);
  }
}
