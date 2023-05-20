import '../efetuar_chamadas_screen/widgets/efetuar1_item_widget.dart';
import '../efetuar_chamadas_screen/widgets/efetuar_item_widget.dart';
import 'controller/efetuar_chamadas_controller.dart';
import 'models/efetuar1_item_model.dart';
import 'models/efetuar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';
import 'package:we_help_you/widgets/app_bar/appbar_image.dart';
import 'package:we_help_you/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class EfetuarChamadasScreen extends GetWidget<EfetuarChamadasController> {
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
              height: getSize(
                60,
              ),
              width: getSize(
                60,
              ),
              imagePath: ImageConstant.imgClose11,
              margin: getMargin(
                left: 47,
                right: 47,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 56,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 97,
                  top: 3,
                  right: 97,
                ),
                child: Obx(
                  () => GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: getVerticalSize(
                        71,
                      ),
                      crossAxisCount: 3,
                      mainAxisSpacing: getHorizontalSize(
                        12,
                      ),
                      crossAxisSpacing: getHorizontalSize(
                        12,
                      ),
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.efetuarChamadasModelObj.value
                        .efetuarItemList.value.length,
                    itemBuilder: (context, index) {
                      EfetuarItemModel model = controller
                          .efetuarChamadasModelObj
                          .value
                          .efetuarItemList
                          .value[index];
                      return EfetuarItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  top: 46,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: ColorConstant.black900,
                    width: getHorizontalSize(
                      1,
                    ),
                  ),
                  borderRadius: BorderRadiusStyle.circleBorder30,
                ),
                child: Container(
                  height: getSize(
                    60,
                  ),
                  width: getSize(
                    60,
                  ),
                  padding: getPadding(
                    all: 10,
                  ),
                  decoration: AppDecoration.outlineBlack9001.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCall1,
                        height: getSize(
                          40,
                        ),
                        width: getSize(
                          40,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 115,
                ),
                child: Divider(
                  height: getVerticalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  color: ColorConstant.black900,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 101,
                  top: 29,
                  right: 102,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          10,
                        ),
                      );
                    },
                    itemCount: controller.efetuarChamadasModelObj.value
                        .efetuar1ItemList.value.length,
                    itemBuilder: (context, index) {
                      Efetuar1ItemModel model = controller
                          .efetuarChamadasModelObj
                          .value
                          .efetuar1ItemList
                          .value[index];
                      return Efetuar1ItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: getPadding(
                    top: 10,
                    right: 114,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          65,
                        ),
                        margin: getMargin(
                          bottom: 5,
                        ),
                        padding: getPadding(
                          left: 25,
                          top: 2,
                          right: 25,
                          bottom: 2,
                        ),
                        decoration: AppDecoration.txtFillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        ),
                        child: Text(
                          "lbl_0".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterRegular24,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgErase1,
                        height: getSize(
                          40,
                        ),
                        width: getSize(
                          40,
                        ),
                        margin: getMargin(
                          left: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
