import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class AddCustomerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.withOpacity(0.23),
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
          "New customer",
          fontSize: 18.sp,
        ),
      ),
      bottomSheet: Container(
        height: 80.h,
        width: Get.width,
        decoration: BoxDecoration(color: AppColors.whiteColor),
        child: Center(
          child: CustomButton(
            title: "Save",
            txtColor: AppColors.whiteColor,
            // color: AppColors.whiteColor,
            onTap: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.gray.withOpacity(0.23)),
                  child: Center(
                    child: Icon(
                      Icons.photo,
                      size: 40.h,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    CustomTextFormField(
                      hintText: "Name",
                    ),
                    CustomTextFormField(
                      hintText: "Mobile #",
                    ),
                    CustomTextFormField(
                      hintText: "Address Line 1 (optional)",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: Get.width,
              color: AppColors.whiteColor,
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: CustomText(
                    "Details",
                    color: AppColors.black,
                    fontSize: 18.sp,
                  ),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Column(
                        children: [
                          CustomTextFormField(
                            hintText: "Reduced Product",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFormField(
                            hintText: "Category",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFormField(
                            hintText: "Description",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFormField(
                            hintText: "Code",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFormField(
                            hintText: "Cost",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          CustomTextFormField(
                            hintText: "Sell By",
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              CustomText(
                                "Highlight this Product",
                                fontSize: 16.sp,
                              ),
                              Spacer(),
                              Switch(value: true, onChanged: (value) {}),
                            ],
                          ),
                          Divider(
                            color: AppColors.gray,
                          ),
                          Row(
                            children: [
                              CustomText(
                                "Show product on catalog",
                                fontSize: 16.sp,
                                color: AppColors.gray.withOpacity(0.23),
                              ),
                              Spacer(),
                              Switch(value: false, onChanged: (value) {}),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
                          "Allow customers to pay Later",
                          color: AppColors.secondary,
                          fontSize: 16.sp,
                        ),
                        Spacer(),
                        Switch(value: false, onChanged: (value) {})
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
