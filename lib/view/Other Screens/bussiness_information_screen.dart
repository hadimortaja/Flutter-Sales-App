import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class BussinessInformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 60.h,
        width: Get.width,
        child: CustomButton(
          onTap: () {},
          color: AppColors.whiteColor,
          title: "Save",
        ),
      ),
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
          "Business Information",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Get.width,
              // height: 120.h,
              decoration:
                  BoxDecoration(color: AppColors.gray.withOpacity(0.23)),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Icon(
                      Icons.photo,
                      size: 45.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    CustomText(
                      "Upload your logo",
                      color: AppColors.primaryColor,
                      fontSize: 16.sp,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    hintText: "Business name",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    hintText: "Phone (optional)",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    hintText: "Address Line 1",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    hintText: "Address Line 2 (apartment,suite,unit,building)",
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
