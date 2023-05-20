import 'controller/som_controller.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SomScreen extends GetWidget<SomController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 30,
            top: 27,
            right: 30,
            bottom: 27,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
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
                margin: getMargin(
                  left: 7,
                  top: 28,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgWorkinprogress,
                height: getVerticalSize(
                  278,
                ),
                width: getHorizontalSize(
                  299,
                ),
                margin: getMargin(
                  top: 35,
                  right: 20,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgSettings2,
                height: getVerticalSize(
                  226,
                ),
                width: getHorizontalSize(
                  267,
                ),
                margin: getMargin(
                  top: 68,
                  right: 36,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 82,
                  top: 11,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 127,
                      ),
                      child: Text(
                        "lbl_geral".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterRegular24WhiteA700,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(
                        166,
                      ),
                      width: getHorizontalSize(
                        226,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRadiowaves1113x114,
                            height: getVerticalSize(
                              113,
                            ),
                            width: getHorizontalSize(
                              114,
                            ),
                            alignment: Alignment.bottomLeft,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 21,
                                top: 10,
                              ),
                              child: Text(
                                "lbl_toque".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular24WhiteA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: getHorizontalSize(
                                119,
                              ),
                              child: Text(
                                "msg_assistente".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular24WhiteA700,
                              ),
                            ),
                          ),
                        ],
                      ),
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
