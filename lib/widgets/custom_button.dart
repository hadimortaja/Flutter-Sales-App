import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final double? height;
  final Function()? onTap;
  final Color? color;
  final String? title;
  final Color? txtColor;
  const CustomButton(
      {this.width,
      this.height,
      this.onTap,
      this.color,
      this.title,
      this.txtColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 343.w,
        height: height ?? 50.h,
        decoration: BoxDecoration(
            color: color ?? AppColors.primaryColor,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.primaryColor)),
        child: Center(
          child: CustomText(
            title,
            color: txtColor ?? AppColors.primaryColor,
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
