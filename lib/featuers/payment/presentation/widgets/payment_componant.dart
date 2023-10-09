import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/constants/colors.dart';
import 'package:furniture_app/core/services/constants/strings.dart';
import 'package:furniture_app/core/services/constants/svg_icons.dart';
import 'package:furniture_app/core/services/theme/text_styles.dart';

Text appBarTextpay() {
  return Text(
    Strings.paymentMethod.text,
    style: const TextStyle(
      color: AppColors.c303030,
    ),
  );
}



class WidgetCheckBoxpayment extends StatefulWidget {
  final bool isChecker;
  final Function function;

  WidgetCheckBoxpayment({
    required this.function,
    required this.isChecker,
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetCheckBoxpayment> createState() => _WidgetCheckBoxState();
}

class _WidgetCheckBoxState extends State<WidgetCheckBoxpayment> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isActive = widget.isChecker;

    return GestureDetector(
      onTap: () {
        setState(() {});
      },

      /// #check Box & Shipping Address
      child: Row(
        children: [
          /// #checkBox
          isActive
              ? const Icon(Icons.check_box)
              : const Icon(
                  Icons.check_box_outline_blank,
                  color: AppColors.c909090,
                ),

          SizedBox(
            width: 15 * width / 375,
          ),

          /// #shippingAddress
          Text(
     "Use as default payment method",
            style: AppTextStyles.nunitoSansRegular16
        .copyWith(color: AppColors.c303030, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class WidgetFloatingActionButtonpay extends StatelessWidget {
  const WidgetFloatingActionButtonpay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 2,
      backgroundColor: AppColors.cFFFFFF,
      onPressed: () {},
      child: SvgIcon.add,
    );
  }
}
