import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Other%20Screens/customers_screen.dart';
import 'package:sales_app/view/Other%20Screens/home_screen.dart';
import 'package:sales_app/view/Other%20Screens/new_customer_screen.dart';
import 'package:sales_app/view/Other%20Screens/new_product_screen.dart';
import 'package:sales_app/view/Other%20Screens/products_screen.dart';
import 'package:sales_app/view/Other%20Screens/settings_screen.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: AppColors.secondary,
      ),
      child: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 60.0,
                      lineWidth: 5.0,
                      percent: 0.6,
                      center: CustomText(
                        "JU",
                        color: AppColors.whiteColor,
                        fontSize: 18.sp,
                      ),
                      progressColor: AppColors.primaryColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              "Company Name",
                              color: AppColors.whiteColor,
                              fontSize: 20.sp,
                            ),
                            SizedBox(
                              width: 30.h,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18.h,
                              color: AppColors.whiteColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              "Your Name",
                              color: AppColors.gray,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              width: 100.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: CustomText(
                                  "SUBSCRIBE",
                                  fontSize: 16.sp,
                                  color: AppColors.secondary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                DrawerItem(
                  iconName: Icons.check_box_outlined,
                  title: "Checkout",
                  onTap: () {
                    Get.off(() => HomeScreen());
                  },
                ),
                DrawerItem(
                  iconName: Icons.dashboard_outlined,
                  title: "Products",
                  onTap: () {
                    Get.to(() => ProductsScreen());
                  },
                ),
                DrawerItem(
                  iconName: Icons.person,
                  title: "Customers",
                  onTap: () {
                    Get.to(() => CustomersScreen());
                  },
                ),
                DrawerItem(
                  iconName: Icons.monetization_on_outlined,
                  title: "Transactions",
                  onTap: () {},
                ),
                DrawerItem(
                  iconName: Icons.settings,
                  title: "Settings",
                  onTap: () {
                    Get.to(SettingsScreen());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
