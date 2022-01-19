import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/view/Other%20Screens/transactions_details_screen.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/drawer_widget.dart';

class TransactionsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      drawer: DrawerWidget(),
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Icon(
            Icons.menu,
            color: AppColors.black,
          ),
        ),
        backgroundColor: AppColors.whiteColor,
        title: CustomText(
          "Transactions",
          fontSize: 16.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Item, customer, price or code"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              decoration: BoxDecoration(color: AppColors.whiteColor),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.group,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          "Salesperson",
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 20.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(TransactionsDetailsScreen());
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomText(
                                "Wednesday,5 Jan 2022",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomText(
                                "1 sale, MYR 10.60",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColors.gray,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.payment),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    "MYR 10.60",
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    "23:58",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.gray,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    "3 items:1x Hh 1x Milo 1x Cola",
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Spacer(),
                                  CustomText(
                                    "#10",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.gray,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Divider(),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: 3,
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
