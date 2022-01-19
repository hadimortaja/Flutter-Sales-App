import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Other%20Screens/new_category_screen.dart';
import 'package:sales_app/widgets/custom_text.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      // shrinkWrap: true,
      // primary: false,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(NewCategoryScreen());
          },
          child: Container(
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
        ),
        SizedBox(
          height: 10.h,
        ),
        CustomText(
          "Hey Let's add your first category",
          textAlign: TextAlign.center,
          fontSize: 16.sp,
          color: AppColors.gray,
        )
      ],
    );
  }
}
