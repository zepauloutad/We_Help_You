import 'controller/voice_ai_mudo_controller.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/widgets/app_bar/appbar_image.dart';
import 'package:we_help_you/widgets/app_bar/custom_app_bar.dart';
import 'package:we_help_you/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class VoiceAiMudoScreen extends GetWidget<VoiceAiMudoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray900,
        appBar: CustomAppBar(
          height: getVerticalSize(
            115,
          ),
          leadingWidth: 97,
          leading: AppbarImage(
            height: getSize(
              60,
            ),
            width: getSize(
              60,
            ),
            imagePath: ImageConstant.imgArrow1,
            margin: getMargin(
              left: 37,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                55,
              ),
              width: getHorizontalSize(
                57,
              ),
              imagePath: ImageConstant.imgMenu1,
              margin: getMargin(
                left: 16,
                top: 3,
                right: 16,
                bottom: 2,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 20,
            top: 10,
            right: 20,
            bottom: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 71,
                ),
                color: ColorConstant.gray100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Container(
                  height: getVerticalSize(
                    250,
                  ),
                  width: getHorizontalSize(
                    305,
                  ),
                  padding: getPadding(
                    left: 38,
                    top: 19,
                    right: 38,
                    bottom: 19,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLoading1,
                        height: getVerticalSize(
                          211,
                        ),
                        width: getHorizontalSize(
                          220,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 27,
                  top: 81,
                  right: 22,
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
              CustomImageView(
                svgPath: ImageConstant.imgFrame12,
                height: getVerticalSize(
                  325,
                ),
                width: getHorizontalSize(
                  388,
                ),
                radius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      40,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      40,
                    ),
                  ),
                ),
                margin: getMargin(
                  top: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
