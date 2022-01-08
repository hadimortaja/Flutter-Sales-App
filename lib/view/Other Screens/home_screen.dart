import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/value/app_get.dart';
import 'package:sales_app/value/colors.dart';
import 'package:sales_app/widgets/alert_dialog_container.dart';
import 'package:sales_app/widgets/custom_button.dart';
import 'package:sales_app/widgets/custom_image.dart';
import 'package:sales_app/widgets/custom_text.dart';
import 'package:sales_app/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double childAspectRatio(double ratio) {
      return MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / ratio);
    }

    return Scaffold(
        bottomSheet: Container(
          height: 80.h,
          width: Get.width,
          decoration: BoxDecoration(color: AppColors.whiteColor),
          child: Center(
            child: CustomButton(
              title: "No Item",
              color: AppColors.whiteColor,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: AlertDialogContainer(() {
                          Get.back();
                        }),
                      );
                    });
              },
            ),
          ),
        ),
        key: _scaffoldKey,
        drawer: DrawerWidget(),
        appBar: AppBar(
          actions: [
            Icon(
              Icons.add,
              color: AppColors.primaryColor,
            )
          ],
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
            "Checkout",
            color: AppColors.black,
          ),
        ),
        body: GetBuilder<AppGet>(
            init: AppGet(),
            id: "search",
            builder: (controller) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: !controller.isSearch.value,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.setIsSearch();
                            },
                            child: Icon(
                              Icons.search,
                              size: 25.h,
                            ),
                          ),
                          Spacer(),
                          CustomPngImage(
                            imageName: "barcode",
                            height: 22.h,
                            width: 22.w,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomPngImage(
                            imageName: "lightning",
                            height: 22.h,
                            width: 22.w,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          CustomPngImage(
                            imageName: "dashboard",
                            height: 22.h,
                            width: 22.w,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            // width: 40.w,
                            // height: 20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                border: Border.all(color: AppColors.black)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 8.w, right: 8.w, top: 5.h),
                              child: CustomText(
                                "1 X",
                                color: AppColors.black,
                                fontSize: 14.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    controller.isSearch.value
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.setIsSearch();
                                },
                                child: Icon(
                                  Icons.close,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                  child: Container(
                                      width: Get.width,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Search products"),
                                      )))
                            ],
                          )
                        : SizedBox(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: childAspectRatio(1.3),
                        ),
                        // scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: index == 0
                                ? Container(
                                    height: 300.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.whiteColor,
                                        size: 45.h,
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 300.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        color: AppColors.gray.withOpacity(0.23),
                                        borderRadius:
                                            BorderRadius.circular(8.r)),
                                  ),
                          );
                        },
                        itemCount: 15,
                      ),
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              );
            }));
  }
}
