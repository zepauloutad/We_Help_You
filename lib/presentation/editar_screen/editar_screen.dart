import '../editar_screen/widgets/editar_item_widget.dart';
import 'controller/editar_controller.dart';
import 'models/editar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore_for_file: must_be_immutable
class EditarScreen extends GetWidget<EditarController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 36,
            top: 35,
            right: 36,
            bottom: 35,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 93,
                  right: 18,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        151,
                      ),
                      crossAxisCount: 2,
                      mainAxisSpacing: getHorizontalSize(
                        38,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        38,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller
                        .editarModelObj.value.editarItemList.value.length,
                    itemBuilder: (context, index) {
                      EditarItemModel model = controller
                          .editarModelObj.value.editarItemList.value[index];
                      return EditarItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 35,
                  right: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: getPadding(
                        all: 8,
                      ),
                      decoration: AppDecoration.fillGray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              height: getVerticalSize(
                                90,
                              ),
                              width: getHorizontalSize(
                                104,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEar1,
                                    height: getSize(
                                      75,
                                    ),
                                    width: getSize(
                                      75,
                                    ),
                                    alignment: Alignment.bottomLeft,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgXmark4,
                                    height: getSize(
                                      2,
                                    ),
                                    width: getSize(
                                      2,
                                    ),
                                    alignment: Alignment.topRight,
                                    margin: getMargin(
                                      right: 29,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgXmark4,
                                    height: getSize(
                                      30,
                                    ),
                                    width: getSize(
                                      30,
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_mudo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.gray100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Container(
                        height: getSize(
                          150,
                        ),
                        width: getSize(
                          150,
                        ),
                        padding: getPadding(
                          left: 24,
                          top: 28,
                          right: 24,
                          bottom: 28,
                        ),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlus1,
                              height: getVerticalSize(
                                93,
                              ),
                              width: getHorizontalSize(
                                99,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMicrophone1,
                height: getVerticalSize(
                  99,
                ),
                width: getHorizontalSize(
                  74,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24,
                  ),
                ),
                alignment: Alignment.center,
                margin: getMargin(
                  top: 144,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
