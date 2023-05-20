import 'controller/voice_ai_iluna_controller.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class VoiceAiIlunaScreen extends GetWidget<VoiceAiIlunaController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 37,
            top: 55,
            right: 37,
            bottom: 55,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrow1,
                height: getSize(
                  60,
                ),
                width: getSize(
                  60,
                ),
                alignment: Alignment.centerLeft,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgRadiowaves1,
                height: getVerticalSize(
                  267,
                ),
                width: getHorizontalSize(
                  281,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEar2,
                height: getVerticalSize(
                  112,
                ),
                width: getHorizontalSize(
                  97,
                ),
                margin: getMargin(
                  top: 32,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 19,
                  right: 3,
                  bottom: 72,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      height: getVerticalSize(
                        39,
                      ),
                      width: getHorizontalSize(
                        134,
                      ),
                      text: "lbl_falar".tr,
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        39,
                      ),
                      width: getHorizontalSize(
                        134,
                      ),
                      text: "lbl_parar".tr,
                      variant: ButtonVariant.FillGray100,
                      fontStyle: ButtonFontStyle.InterRegular24Black900,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
