import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';

class QuantityScreen extends StatefulWidget {
  @override
  State<QuantityScreen> createState() => _QuantityScreenState();
}

class _QuantityScreenState extends State<QuantityScreen> {
  var value = 1;

  increment() {
    value++;
  }

  dicrement() {
    value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Quantity",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      dicrement();
                    });
                  },
                  child: CustomText(
                    "-",
                    fontSize: 80.sp,
                  ),
                ),
                SizedBox(
                  width: 50.w,
                ),
                // IconButton(
                //     onPressed: () {
                //       setState(() {
                //         dicrement();
                //       });
                //     },
                //     icon: Icon(
                //       Icons.minimize,
                //       size: 80.h,
                //     )),
                CustomText(
                  value.toString(),
                  fontSize: 80.sp,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  width: 50.w,
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      increment();
                    });
                  },
                  child: CustomText(
                    "+",
                    fontSize: 80.sp,
                  ),
                ),
                // IconButton(
                //     onPressed: () {
                //       setState(() {
                //         increment();
                //       });
                //     },
                //     icon: Icon(
                //       Icons.add,
                //       size: 80.h,
                //     )),
              ],
            ),
            // Spacer(),
            Container(
              width: Get.width,
              // height: 400.h,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "1",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "2",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "3",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "4",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "5",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "6",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          "7",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "8",
                          fontSize: 30.sp,
                        ),
                        CustomText(
                          "9",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Divider(),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          "0",
                          fontSize: 30.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    CustomButton(
                      onTap: () {},
                      title: "OK",
                      txtColor: AppColors.whiteColor,
                      width: Get.width,
                      height: 55.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
