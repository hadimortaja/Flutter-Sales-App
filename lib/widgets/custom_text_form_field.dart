import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sales_app/value/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final Function()? validator;
  final Function()? onSaved;
  // final Function onChanged;
  final Icon? iconData;
  final int? maxLine;
  final TextInputType? textInputType;
  final Color? fillColor;
  final String? textInitialValue;
  TextEditingController? textEditingController;
  final bool? long;
  final Widget? suffixIcon;
  final bool isPassword;
  final TextEditingController? controller;
  final Color? hintColor;
  final Color? tabColor;
  final Color? untabColor;

  final bool? isHome;

  bool? prefixIcon;
  final bool? autofocus;
  final TextAlign? textAlign;
  final EdgeInsetsGeometry? contentPadding;
  CustomTextFormField(
      {Key? key,
      this.hintText,
      this.validator,
      this.onSaved,
      //this.onChanged,
      this.iconData,
      this.prefixIcon = false,
      this.textInputType = TextInputType.text,
      this.textEditingController,
      this.textInitialValue,
      this.suffixIcon,
      this.maxLine = 1,
      this.autofocus = false,
      this.textAlign,
      this.isPassword = false,
      this.fillColor,
      this.long = false,
      this.contentPadding,
      this.controller,
      this.hintColor,
      this.isHome = false,
      this.tabColor = AppColors.gray,
      this.untabColor = AppColors.gray});

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  IconData iconData = FontAwesomeIcons.eyeSlash;
  bool toggleEye = true;

  fmToggleEye() {
    toggleEye = !toggleEye;
    iconData = toggleEye ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye;
    setState(() {});
  }

  bool taped = false;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() {
      taped = focusNode.hasFocus;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: widget.controller,
      obscureText: widget.isPassword ? toggleEye : false,
      keyboardType: widget.textInputType ?? TextInputType.text,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: widget.untabColor ?? AppColors.primaryColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: widget.tabColor ?? AppColors.primaryColor),
        ),
        border: UnderlineInputBorder(),
        suffix: widget.isPassword
            ? GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    iconData,
                    color: AppColors.gray,
                  ),
                ),
                onTap: () {
                  fmToggleEye();
                },
              )
            : null,
        // ignore: deprecated_member_use
        labelText: widget.hintText ?? "",
        labelStyle: TextStyle(
            fontSize: 14.sp,
            color: taped ? widget.tabColor : widget.untabColor,
            fontFamily:
                translator.isDirectionRTL(context) ? "cairo" : "roboto"),
      ),
    );
  }
}
