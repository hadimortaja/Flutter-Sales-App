import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Auth/create_account_screen.dart';
import 'package:sales_app/view/Auth/sign_in_email_screen.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_image.dart';
import 'package:sales_app/widgets/custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 100.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: AppColors.gray.withOpacity(0.23),
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            "Help",
                            fontSize: 16.sp,
                            color: AppColors.gray,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.info_outline,
                            color: AppColors.gray,
                            size: 20.h,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 120.h,
              ),
              CustomText("LOGO",
                  color: AppColors.primaryColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
              SizedBox(
                height: 10.h,
              ),
              CustomText(
                "Sell,Manage,Engage.",
                color: AppColors.primaryColor,
                fontSize: 16.sp,
              ),
              SizedBox(
                height: 100.h,
              ),
              CustomButton(
                color: AppColors.whiteColor,
                title: "Log in",
                txtColor: AppColors.black,
                onTap: () {
                  Get.to(() => SignInScreen());
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onTap: () {
                  Get.to(() => CreateAccountScreen());
                },
                title: "Create Account",
                txtColor: AppColors.whiteColor,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomText(
                "OR LOG IN WITH",
                color: AppColors.gray,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CustomPngImage(
                            imageName: "facebook",
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            "Facebook",
                            color: AppColors.gray,
                            fontSize: 16.sp,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 35.h,
                      width: 1.w,
                      color: AppColors.gray,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CustomPngImage(
                            imageName: "google",
                            height: 40.h,
                            width: 40.w,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          CustomText(
                            "Google",
                            color: AppColors.gray,
                            fontSize: 16.sp,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        "By Creating an account you agree with the ",
                        fontSize: 16.sp,
                        color: AppColors.gray,
                      ),
                      CustomText(
                        "Terms of",
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        underline: true,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        "use",
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        underline: true,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      CustomText(
                        "and",
                        fontSize: 16.sp,
                        color: AppColors.gray,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      CustomText(
                        "Privacy polivcy",
                        fontSize: 16.sp,
                        color: AppColors.primaryColor,
                        underline: true,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
