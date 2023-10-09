import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:furniture_app/core/services/constants/colors.dart';
import 'package:furniture_app/core/services/constants/strings.dart';
import 'package:furniture_app/core/services/constants/svg_icons.dart';
import 'package:furniture_app/core/services/theme/text_styles.dart';

Text appBarTextsetting() {
  return Text(
    Strings.Setting.text,
    style: const TextStyle(
      color: AppColors.c303030,
    ),
  );
}

Text titel1text() {
  return Text(Strings.Notifications.text,
      style: AppTextStyles.nunitoSansRegular16.copyWith(
        color: AppColors.c909090,
      ));
}

Text titel2text() {
  return Text(Strings.helpCenter.text,
      style: AppTextStyles.nunitoSansRegular16.copyWith(
        color: AppColors.c909090,
      ));
}

class custom_Row extends StatelessWidget {
  const custom_Row({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('${text}',
              style: AppTextStyles.nunitoSansRegular16.copyWith(
                color: AppColors.c909090,
              )),
        ),
        FilledButton(
          onPressed: () {},
          style: const ButtonStyle(
            fixedSize: MaterialStatePropertyAll<Size>(Size(30, 10)),
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
            overlayColor: MaterialStatePropertyAll(
              AppColors.cF0F0F0,
            ),
          ),
          child: SizedBox(
            width: 30,
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: SvgIcon.edit,
            ),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class MyCardcontainer extends StatelessWidget {
  String titleChild;
  String? subtitleChild;
  final void Function()? onTap;
  Widget? widget;
  MyCardcontainer(
      {Key? key,
      this.onTap,
      this.widget,
      required this.titleChild,
      this.subtitleChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      elevation: 2,
      child: SizedBox(
        height: 60,
        child: ListTile(
          onTap: onTap,
          style: ListTileStyle.list,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              titleChild,
              style: AppTextStyles.nunitoSansBold14,
            ),
          ),
          subtitle: Text(
            subtitleChild ?? '',
            style: AppTextStyles.nunitoSansBold16,
          ),
          trailing: widget,
        ),
      ),
    );
  }
}

class textandSwitch_container extends StatefulWidget {
  const textandSwitch_container({super.key, required this.subtitleChild});
  final String subtitleChild;

  @override
  State<textandSwitch_container> createState() =>
      _textandSwitch_containerState();
}

class _textandSwitch_containerState extends State<textandSwitch_container> {
  bool isTogeld = true;
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      elevation: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 50,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.subtitleChild,
                style: AppTextStyles.nunitoSansBold16,
              ),
            ),
            FlutterSwitch(
              height: 20.0,
              width: 40.0,
              padding: 4.0,
              toggleSize: 15.0,
              borderRadius: 10.0,
              activeColor: Colors.green,
              value: isTogeld,
              onToggle: (value) {
                setState(() {
                  isTogeld = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
