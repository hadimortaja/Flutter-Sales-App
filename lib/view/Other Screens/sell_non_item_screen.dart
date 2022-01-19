import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';

class SellNonItemScreen extends StatelessWidget {
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
          "Sell a non-inventory item",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            TextFormField(
                style: TextStyle(color: AppColors.primaryColor, fontSize: 60.h),
                initialValue: "MYR 0.00",
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                )),
            // Spacer(),
            Container(
              width: Get.width,
              // height: 400.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "1",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "2",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "3",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "4",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "5",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "6",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "7",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "8",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "9",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          "0",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomButton(
                      title: "Send to Cart",
                      txtColor: AppColors.whiteColor,
                      width: Get.width,
                      height: 55.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
