import 'package:flutter/cupertino.dart';
import 'package:furniture_app/core/controllers/base_controller.dart';
import 'package:furniture_app/core/services/data/database/products.dart';
import 'package:furniture_app/featuers/cart/presentation/views/cart_screen.dart';
import 'package:furniture_app/featuers/product/manger/product_model.dart';
import 'package:furniture_app/featuers/product/presentation/views/product_screen.dart';


class FavoriteController extends BaseController{
  void Function(void Function())? updater;
  void goToCongrats(BuildContext context) {
    Navigator.pushNamed(context, CartScreen.id);
  }

  void buttonProduct(BuildContext context, Product product) {
    Navigator.of(context).pushNamed(ProductScreen.id, arguments: product);
  }

  FavoriteController({this.updater});
  void productDelete(int index){
    products.removeAt(index);
    updater!((){});
  }
}