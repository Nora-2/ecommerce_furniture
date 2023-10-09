import 'package:furniture_app/core/controllers/base_controller.dart';
import 'package:furniture_app/core/controllers/data_controller/cart_manager.dart';
import 'package:furniture_app/featuers/category/manger/category_model.dart';
import 'package:furniture_app/featuers/product/manger/product_model.dart';
import 'package:furniture_app/core/services/data/database/categories.dart';
import 'package:furniture_app/core/services/data/database/products.dart';

class HomeController extends BaseController {
  int initialCategoryPage = 0;
  List<Category> categoryList = [];
  List<Product> productList = [];
  void Function(void Function())? updater;
  bool isLoading = false;

  HomeController({this.updater});

  @override
  void initial() {
    super.initial();
    getAllCategory();
  }


  void buttonTabBar(int index) {
    initialCategoryPage = index;
    getProduct(index);
    updater!(() {});
  }


  void getAllCategory() {
    categoryList = categories;
    getProduct();
    updater!(() {});
  }

  void getProduct([int index = 0]) {
    productList = products.where((element) => element.category.id == categoryList[index].id).toList();
  }

  void pressToCard(Product product) {
    cartManager.addToCartHome(product);
    updater!(() {});
  }
}
