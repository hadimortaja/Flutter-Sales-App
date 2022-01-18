import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Other%20Screens/bussiness_information_screen.dart';
import 'package:sales_app/view/Other%20Screens/general_screen.dart';
import 'package:sales_app/view/Other%20Screens/my_receipt_screen.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/drawer_widget.dart';
import 'package:sales_app/widgets/settings_item.dart';

class SettingsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: CustomText(
          "Settings",
          color: AppColors.secondary,
          fontSize: 17.sp,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: AppColors.black,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            SettingsItem(
              onTap: () {
                Get.to(GeneralScreen());
              },
              icon: Icons.settings,
              title: "General",
            ),
            SettingsItem(
              onTap: () {
                Get.to(BussinessInformationScreen());
              },
              icon: Icons.store,
              title: "Business Information",
            ),
            SettingsItem(
              onTap: () {
                Get.to(MyReciptScreen());
              },
              icon: Icons.inventory_outlined,
              title: "My Receipt",
            ),
          ],
        ),
      ),
    );
  }
}
