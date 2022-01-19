import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';

class TransactionsDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        bottomSheet: Container(
          height: 80.h,
          width: Get.width,
          decoration: BoxDecoration(color: AppColors.whiteColor),
          child: Center(
            child: CustomButton(
              title: "Cancel Transaction",
              color: AppColors.whiteColor,
              onTap: () {},
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          title: CustomText(
            "05/01/2022 at 23:58",
            fontSize: 14.sp,
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  CustomText(
                    "MYR 10.60",
                    color: AppColors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomText(
                        "#10",
                        fontSize: 14.sp,
                      ),
                      CustomText(
                        "Your Name",
                        fontSize: 14.sp,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TabBar(
              indicatorColor: AppColors.primaryColor,
              indicatorWeight: 2.0,
              labelColor: AppColors.primaryColor,
              labelStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
              // labelPadding: EdgeInsets.only(top: 10.0),
              unselectedLabelColor: AppColors.secondary,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
              tabs: [
                Tab(
                  text: "ITEMS",
                ),
                Tab(
                  text: "DETAILS",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Row(
                                children: [
                                  CustomText(
                                    "1x",
                                    fontSize: 14.sp,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    "Hh",
                                    fontSize: 16.sp,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    "MYR 0.50",
                                    fontSize: 16.sp,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(),
                          ],
                        );
                      },
                      itemCount: 3,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: Row(
                                children: [
                                  CustomText(
                                    "1x",
                                    fontSize: 14.sp,
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    "Hh",
                                    fontSize: 16.sp,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    "MYR 0.50",
                                    fontSize: 16.sp,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(),
                          ],
                        );
                      },
                      itemCount: 3,
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
