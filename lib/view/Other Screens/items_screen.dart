import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Other%20Screens/new_product_screen.dart';
import 'package:sales_app/widgets/custom_text.dart';

class ItemsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      // shrinkWrap: true,
      // primary: false,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            children: [
              Icon(Icons.search),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Search products"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(NewProductScreen());
                },
                child: Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                  size: 30.h,
                ),
              )
            ],
          ),
        ),
        Container(
          width: Get.width,
          decoration: BoxDecoration(color: AppColors.whiteColor),
          child: SizedBox(
            width: Get.width,
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 80.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              color: AppColors.secondary,
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomText(
                            "Cola",
                            fontSize: 16.sp,
                          ),
                          Spacer(),
                          CustomText(
                            "MYR 0.10",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Divider(),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                );
              },
              itemCount: 2,
            ),
          ),
        )
        // Container(
        //   height: 120.h,
        //   width: 120.w,
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(12.r),
        //       color: AppColors.gray.withOpacity(0.23)),
        //   child: Center(
        //     child: Icon(
        //       Icons.add,
        //       size: 60.h,
        //       color: AppColors.primaryColor,
        //     ),
        //   ),
        // ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // CustomText(
        //   "Hey! Let's add your first!",
        //   fontSize: 16.sp,
        //   color: AppColors.gray,
        // )
      ],
    );
  }
}
