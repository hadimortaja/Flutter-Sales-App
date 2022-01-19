import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'add_customer_screen.dart';

class NewCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        width: Get.width,
        height: 150.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              CustomButton(
                onTap: () {},
                width: Get.width,
                height: 60.h,
                color: AppColors.whiteColor,
                title: "Import Contacts",
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                onTap: () {
                  print("sss");
                  Get.to(AddCustomerScreen());
                },
                width: Get.width,
                height: 60.h,
                title: "New Customer",
                txtColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffFAFAFA),
      body: Column(
        children: [
          Container(
            width: Get.width,
            // height: 120.h,
            decoration: BoxDecoration(color: AppColors.whiteColor),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      CustomText(
                        "New Customer",
                        fontSize: 16.sp,
                        color: AppColors.black,
                      ),
                      Spacer(),
                      Icon(
                        Icons.download,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.h,
                ),
                CustomText("LOGO",
                    color: AppColors.primaryColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                    "Where is everyone? Let's create your first\ncustomer account.",
                    color: AppColors.gray,
                    textAlign: TextAlign.center,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
