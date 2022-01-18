import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class MyReciptScreen extends StatelessWidget {
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
                title: "Open my receipt",
              ),
              SizedBox(
                height: 15.h,
              ),
              CustomButton(
                onTap: () {},
                width: Get.width,
                height: 60.h,
                title: "Save",
                txtColor: AppColors.whiteColor,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppColors.whiteColor,
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
          "Set up my receipt",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: CustomText(
                "Buisness Information",
                color: AppColors.black,
                fontSize: 16.sp,
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
                          "Display customer information",
                          color: AppColors.secondary,
                          fontSize: 16.sp,
                        ),
                        Spacer(),
                        Switch(value: true, onChanged: (value) {})
                      ],
                    ),
                    CustomText(
                      "Name, address,and phone number",
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
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: "Header (Optional)",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    hintText: "Reciept Footer (Optional)",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
