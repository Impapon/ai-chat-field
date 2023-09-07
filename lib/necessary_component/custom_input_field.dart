import 'package:ai_chat_gpt/necessary_component/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/colors.dart';
import '../utils/image_links.dart';
import 'custom_svg.dart';

class CustomTextInputField extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final bool obscure;
  final String? Function(String?)? validator;
  final int maxLine;
  final Widget? prefixIcon;
  final bool separatePrefixIcon;
  final TextInputAction? textInputAction;
  final bool showBorder;
  final bool isBorderColor;
  final String? prefixImageLink;
  final int? maxLength;
  final String? hintText;
  final Color? cursorColor;
  final Color? backgroundColor;
  final double? prefixWidth;
  final double? prefixIconHeight;
  final Color? prefixIconColor;
  final bool? obscurePadding;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final Color? hintColor;
  final Color? textColor;
  final int? hintMaxLine;
  final bool readOnly;

  const CustomTextInputField(
      {Key? key,
      required this.textEditingController,
      this.keyboardType,
      this.validator,
      this.textColor,
      this.backgroundColor,
      this.maxLine = 1,
      this.prefixIcon,
      this.separatePrefixIcon = false,
      this.textInputAction,
      this.showBorder = true,
      this.isBorderColor = false,
      this.prefixImageLink,
      this.maxLength,
      this.hintText,
      this.obscure = false,
      this.cursorColor,
      this.prefixWidth,
      this.prefixIconColor,
      this.prefixIconHeight,
      this.obscurePadding,
      this.hintFontSize,
      this.hintFontWeight,
      this.hintColor,
      this.hintMaxLine,
      this.readOnly = false})
      : super(key: key);

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  bool obscure = false;

  @override
  void initState() {
    obscure = widget.obscure;
    super.initState();
  }

  double borderRadius = 5;

  @override
  Widget build(BuildContext context) {
    final width = ScreenSize(context).width;
    return
      Container(
      height: width * 0.15,
      decoration: BoxDecoration(
          color: widget.backgroundColor??whiteColor,
          border: Border.all(color: Colors.grey.withOpacity(0.05)),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            // BoxShadow(
            //     color: Colors.grey.withOpacity(0.1),
            //     spreadRadius: 2,
            //     blurRadius: 2 // changes position of shadow
            //     ),
          ]),
      child: TextFormField(
        readOnly: widget.readOnly,
        cursorColor: widget.cursorColor,
        maxLines: widget.maxLine,
        keyboardType: widget.keyboardType ?? TextInputType.text,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        controller: widget.textEditingController,
        textAlignVertical: TextAlignVertical.center,
        obscuringCharacter: '•',
        obscureText: obscure,
        inputFormatters: widget.maxLength != null
            ? [LengthLimitingTextInputFormatter(widget.maxLength!)]
            : null,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: widget.textColor??blackColor),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintMaxLines: widget.hintMaxLine,
          hintStyle: TextStyle(
            color: widget.hintColor ?? blackColor.withOpacity(0.3),
            fontWeight: widget.hintFontWeight ?? FontWeight.w400,
            fontSize: widget.hintFontSize ?? 16,
          ),
          prefixIcon: widget.prefixImageLink == null
              ? null
              : SizedBox(
                  width: widget.prefixWidth ?? width * 0.06,
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 0.03,
                      ),
                      widget.prefixImageLink! == backArrow
                          ? GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                  color: Colors.transparent,
                                  child: CustomSvg(
                                      imageLink: widget.prefixImageLink!,
                                      height: widget.prefixIconHeight ??
                                          width * 0.01,
                                      color: widget.prefixIconColor)))
                          : CustomSvg(
                              imageLink: widget.prefixImageLink!,
                              height: widget.prefixIconHeight ?? width * 0.04,
                              color: widget.prefixIconColor,
                            ),
                      SizedBox(width: width * 0.01),
                    ],
                  ),
                ),
          suffixIcon: widget.obscure
              ? obscure
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: widget.obscure
                          ? widget.obscurePadding!
                              ? const Padding(
                                  padding: EdgeInsets.only(top: 40.0),
                                  child: CustomSvg(imageLink: eye),
                                )
                              : const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: CustomSvg(imageLink: eye),
                                )
                          : const CustomSvg(imageLink: eye))
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          obscure = !obscure;
                        });
                      },
                      icon: widget.obscure
                          ? widget.obscurePadding!
                              ? const Padding(
                                  padding: EdgeInsets.only(top: 20.0),
                                  child: CustomSvg(imageLink: closeEye),
                                )
                              : const CustomSvg(imageLink: closeEye)
                          : const CustomSvg(
                              imageLink: closeEye,
                            ))
              : null,
          contentPadding: widget.obscure
              ? EdgeInsets.only(
                  top: widget.obscurePadding! ? 25 : 10,
                  left: 8,
                )
              : widget.prefixImageLink != null
                  ? const EdgeInsets.only(top: 35)
                  : const EdgeInsets.all(10),
          border: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 0,
                  ))
              : InputBorder.none,
          errorBorder: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                    color: redColor,
                  ))
              : InputBorder.none,
          focusedBorder: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ))
              : InputBorder.none,
          enabledBorder: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ))
              : InputBorder.none,
          focusedErrorBorder: widget.showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: const BorderSide(color: Colors.red))
              : InputBorder.none,
        ),
        validator: widget.validator,
      ),
    );
  }
}
