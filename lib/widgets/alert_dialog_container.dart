import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

Widget AlertDialogContainer(Function() onTap) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      CustomText(
        "Your Cart is empty",
        color: AppColors.gray,
        fontSize: 16.sp,
      ),
      SizedBox(
        height: 10.h,
      ),
      CustomText(
        "Ready to sell? Add some items to cart first.",
        color: AppColors.black,
        fontSize: 14.sp,
      ),
      SizedBox(
        height: 25.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: onTap,
            child: CustomText(
              "Ok",
              color: AppColors.gray,
              fontSize: 16.sp,
            ),
          ),
        ],
      )
    ],
  );
}
