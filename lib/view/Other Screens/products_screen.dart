import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of Tabs

      child: Scaffold(
        bottomSheet: Container(
          height: 80.h,
          width: Get.width,
          decoration: BoxDecoration(color: AppColors.whiteColor),
          child: Center(
            child: CustomButton(
              title: "Create Product",
              color: AppColors.whiteColor,
              onTap: () {
                // Get.to(() => HomeScreen());
              },
            ),
          ),
        ),
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBar(
          elevation: 0.0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.upload,
                  color: AppColors.black,
                ))
          ],
          backgroundColor: AppColors.whiteColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 20.h,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: CustomText(
            "Items(0)",
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(
            indicatorColor: AppColors.primaryColor,
            indicatorWeight: 2.0,
            labelColor: AppColors.primaryColor,
            labelStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
            // labelPadding: EdgeInsets.only(top: 10.0),
            unselectedLabelColor: AppColors.secondary,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
            tabs: [
              Tab(
                text: "ITEMS",
              ),
              Tab(
                text: "STOCK",
              ),
              Tab(
                text: "CATEGORIES",
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // shrinkWrap: true,
                      // primary: false,
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.gray.withOpacity(0.23)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 60.h,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          "Hey! Let's add your first!",
                          fontSize: 16.sp,
                          color: AppColors.gray,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      // shrinkWrap: true,
                      // primary: false,
                      children: [
                        Container(
                          height: 120.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.r),
                              color: AppColors.gray.withOpacity(0.23)),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              size: 60.h,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomText(
                          "Create your first product to access the\nInventory Managment",
                          textAlign: TextAlign.center,
                          fontSize: 16.sp,
                          color: AppColors.gray,
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        // shrinkWrap: true,
                        // primary: false,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
