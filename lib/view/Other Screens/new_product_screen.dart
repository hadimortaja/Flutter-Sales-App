import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/custom_text_form_field.dart';

class NewProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of Tabs

      child: Scaffold(
        bottomSheet: Container(
          height: 80.h,
          width: Get.width,
          decoration: BoxDecoration(color: AppColors.whiteColor),
          child: Center(
            child: CustomButton(
              title: "Create Product",
              color: AppColors.whiteColor,
              onTap: () {
                // Get.to(() => HomeScreen());
              },
            ),
          ),
        ),
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.whiteColor,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 20.h,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: CustomText(
            "New Product",
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(
            indicatorColor: AppColors.primaryColor,
            indicatorWeight: 2.0,
            labelColor: AppColors.primaryColor,
            labelStyle: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
            // labelPadding: EdgeInsets.only(top: 10.0),
            unselectedLabelColor: AppColors.secondary,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 15.w),
            tabs: [
              Tab(
                text: "Product",
              ),
              Tab(
                text: "Stock",
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        // shrinkWrap: true,
                        // primary: false,
                        children: [
                          SizedBox(
                            height: 110.h,
                            child: ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      index == 0
                                          ? Container(
                                              height: 40.h,
                                              width: 40.w,
                                              decoration: BoxDecoration(
                                                  color: AppColors.secondary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.r)),
                                            )
                                          : index == 1
                                              ? 
                                              Container(
                                                  // height: 120.h,
                                                  width: 120.w,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff545D6E),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.r),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      CustomText(
                                                        "Name",
                                                        color: AppColors
                                                            .whiteColor,
                                                        fontSize: 22.sp,
                                                      ),
                                                      Spacer(),
                                                      Container(
                                                        width: Get.width,
                                                        // height: 40.h,
                                                        decoration: BoxDecoration(
                                                            color: AppColors
                                                                .secondary,
                                                            borderRadius: BorderRadius.only(
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        8.r),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8.r))),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomText(
                                                                "Product name",
                                                                color: AppColors
                                                                    .whiteColor,
                                                                fontSize: 12.sp,
                                                              ),
                                                              CustomText(
                                                                "\$0.00",
                                                                color: AppColors
                                                                    .whiteColor,
                                                                fontSize: 12.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )
                                             
                                              : Icon(
                                                  FontAwesomeIcons.photoVideo),
                                    ],
                                  ),
                                );
                              },
                              itemCount: 3,
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Container(
                            width: Get.width,
                            decoration:
                                BoxDecoration(color: AppColors.whiteColor),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 15.h),
                              child: Column(
                                children: [
                                  CustomTextFormField(
                                    hintText: "Product Name",
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  CustomTextFormField(
                                    hintText: "Price",
                                  ),
                                  SizedBox(
                                    height: 15.h,
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15.w),
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
                                            Switch(
                                                value: true,
                                                onChanged: (value) {}),
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
                                              color: AppColors.gray
                                                  .withOpacity(0.23),
                                            ),
                                            Spacer(),
                                            Switch(
                                                value: false,
                                                onChanged: (value) {}),
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
                            height: 100.h,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Row(
                            children: [
                              CustomText(
                                "Manage stock for this product",
                                fontSize: 16.sp,
                                color: AppColors.black,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    border: Border.all(color: AppColors.gray)),
                                child: Padding(
                                  padding: EdgeInsets.all(3.h),
                                  child: CustomText(
                                    "PRO",
                                    fontSize: 12.sp,
                                    color: AppColors.gray,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Switch(value: false, onChanged: (value) {}),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.gray,
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        CustomText(
                          "On hand",
                          color: AppColors.gray.withOpacity(0.23),
                          fontWeight: FontWeight.w400,
                          fontSize: 25.sp,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              "0",
                              color: AppColors.red.withOpacity(0.23),
                              fontSize: 60.sp,
                              fontWeight: FontWeight.w400,
                            ),
                            Container(
                              width: 100.w,
                              height: 1.h,
                              color: AppColors.gray,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    "Stock Movement",
                                    fontSize: 16.sp,
                                    color: AppColors.gray,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  CustomText(
                                    "Minimum: 0",
                                    fontSize: 16.sp,
                                    color: AppColors.gray,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
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
