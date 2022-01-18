import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

class GeneralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.whiteColor,
        title: CustomText(
          "General",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: Get.width,
              // height: 60.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      children: [
                        CustomText(
                          "Decimal Parts",
                          color: AppColors.secondary,
                          fontSize: 16.sp,
                        ),
                        Spacer(),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: Get.width,
              // height: 60.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                      "Canceled transactions/orders display",
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                      "Cross Out",
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Divider(),
                    CustomText(
                      "Hide",
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: Get.width,
              // height: 60.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                      "Checkout product sorting",
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomText(
                      "Creation date",
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Divider(),
                    CustomText(
                      "A-Z",
                      fontWeight: FontWeight.w400,
                      color: AppColors.secondary,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: Get.width,
              // height: 60.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomText(
                          "Allow customers to pay Later",
                          color: AppColors.secondary,
                          fontSize: 16.sp,
                        ),
                        Spacer(),
                        Switch(value: false, onChanged: (value) {})
                      ],
                    ),
                    CustomText(
                      "Disable if you do not wish to use this payment method.",
                      color: AppColors.secondary,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              width: Get.width,
              // height: 60.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.all(20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      "Clear data",
                      color: AppColors.red,
                      fontSize: 16.sp,
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
