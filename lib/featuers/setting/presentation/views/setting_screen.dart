import 'package:flutter/material.dart';
import 'package:furniture_app/core/services/constants/strings.dart';
import 'package:furniture_app/core/services/data/database/users.dart';
import 'package:furniture_app/core/weidgets/app_bar_component.dart';
import 'package:furniture_app/featuers/setting/presentation/widgets/setting_componant.dart';

class settingScreen extends StatefulWidget {
  static const id = "/setting";

  const settingScreen({Key? key}) : super(key: key);

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: appBarTextsetting(),
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        action: false,
        leadingPressed: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: custom_Row(text: Strings.PersonalInformation.text),
              ),
              const SizedBox(
                height: 5,
              ),
              MyCardcontainer(
                titleChild: Strings.name.text,
                subtitleChild: currentUser!.name,
              ),
              const SizedBox(
                height: 5,
              ),
              MyCardcontainer(
                titleChild: Strings.email.text,
                subtitleChild: currentUser!.email,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: custom_Row(text: Strings.password.text),
              ),
              const SizedBox(
                height: 5,
              ),
              MyCardcontainer(
                titleChild: Strings.password.text,
                subtitleChild: '***************',
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: titel1text(),
              ),
              const SizedBox(
                height: 5,
              ),
              textandSwitch_container(
                subtitleChild: Strings.Sales.text,
              ),
              const SizedBox(
                height: 5,
              ),
              textandSwitch_container(
                subtitleChild: Strings.Newarrivals.text,
              ),
              const SizedBox(
                height: 5,
              ),
              MyCardcontainer(titleChild: Strings.Deliverystatuschanges.text),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: titel2text(),
              ),
              const SizedBox(
                height: 5,
              ),
              MyCardcontainer(
                titleChild: 'FAQ',
                widget: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
