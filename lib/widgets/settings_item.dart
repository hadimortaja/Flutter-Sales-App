import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_text.dart';

class SettingsItem extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final Function()? onTap;
  SettingsItem({this.icon, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 15.w,
                ),
                CustomText(
                  title ?? "",
                  color: AppColors.secondary,
                  fontSize: 16.sp,
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
