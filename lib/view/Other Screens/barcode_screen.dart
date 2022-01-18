import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

class BarcodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "Checkout",
                        fontSize: 16.sp,
                        color: AppColors.black,
                      ),
                      Spacer(),
                      Icon(Icons.multiple_stop),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        // width: 40.w,
                        // height: 20.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(color: AppColors.black)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 8.w, right: 8.w, top: 5.h),
                          child: CustomText(
                            "1 X",
                            color: AppColors.black,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.person_add_alt,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                width: Get.width,
                height: 150.h,
                decoration: BoxDecoration(color: AppColors.black),
              ),
              SizedBox(
                height: 140.h,
              ),
              CustomText(
                "Scan the barcode label to add the\n product to cart.",
                textAlign: TextAlign.center,
                fontSize: 18.sp,
                color: AppColors.gray,
              )
            ],
          ))
        ],
      ),
    );
  }
}
