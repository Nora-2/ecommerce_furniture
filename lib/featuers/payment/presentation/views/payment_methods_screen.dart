import 'package:flutter/material.dart';
import 'package:furniture_app/core/controllers/shipping_controller/shipping_controller.dart';
import 'package:furniture_app/core/services/constants/images.dart';
import 'package:furniture_app/core/services/data/database/users.dart';
import 'package:furniture_app/core/weidgets/app_bar_component.dart';
import 'package:furniture_app/featuers/payment/presentation/widgets/payment_componant.dart';
import 'package:furniture_app/featuers/shipping/presentation/widgets/action_button_components.dart';

class paymentScreen extends StatefulWidget {
  static const id = "/payment";

  const paymentScreen({Key? key}) : super(key: key);

  @override
  State<paymentScreen> createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  late ShippingController shippingController;
  List<bool> isCheckedList = [];
  bool ischecked = true;

  @override
  void initState() {
    shippingController = ShippingController(updater: setState, user: user1);
    isCheckedList =
        List.generate(currentUser!.addresses.length, (index) => false);
    checker(0);
    super.initState();
  }

  void checker(int i) {
    isCheckedList =
        List.generate(currentUser!.addresses.length, (index) => false);
    isCheckedList[i] = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: appBarTextpay(),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        action: false,
        leadingPressed: () {
          shippingController.goToProfile(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:40,left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 300,
              height: 190,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AppImage.credit1.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                WidgetCheckBoxpayment(
                  function: (value) {
                    setState(() {
                      ischecked = value;
                    });
                  },
                  isChecker: ischecked,
                ),
               
              ],
            ),
             SizedBox(
              height: 25,
            ),
            Container(
              width: 300,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AppImage.credit2.img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
             Row(
              children: [
                WidgetCheckBoxpayment(
                  function: (value) {
                    setState(() {
                      ischecked = value;
                    });
                  },
                  isChecker: !ischecked,
                ),
             
              ],
            ),
             SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      floatingActionButton: const WidgetFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void dispose() {
    shippingController.close();
    super.dispose();
  }
}
