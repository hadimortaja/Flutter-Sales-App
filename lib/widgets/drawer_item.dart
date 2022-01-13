import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

class DrawerItem extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  final IconData? iconName;

  const DrawerItem({Key? key, this.title, this.onTap, this.iconName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Icon(
                iconName,
                size: 25.h,
                color: AppColors.gray,
              ),
              SizedBox(
                width: 15.w,
              ),
              CustomText(
                title,
                fontSize: 16.sp,
                color: AppColors.whiteColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        )
      ],
    );
  }
}
