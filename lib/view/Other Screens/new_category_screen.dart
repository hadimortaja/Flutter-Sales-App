import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class NewCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 80.h,
        width: Get.width,
        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Center(
          child: CustomButton(
            title: "Save",
            color: AppColors.whiteColor,
            onTap: () {
              // Get.to(() => HomeScreen());
            },
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.close,
            size: 20.h,
            color: AppColors.black,
          ),
        ),
        title: CustomText(
          "Create Category",
          fontSize: 18.sp,
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: CustomTextFormField(
            hintText: "",
            untabColor: AppColors.gray,
            tabColor: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
