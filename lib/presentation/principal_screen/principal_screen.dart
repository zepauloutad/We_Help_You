import '../principal_screen/widgets/principal_item_widget.dart';
import 'controller/principal_controller.dart';
import 'models/principal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

class PrincipalScreen extends GetWidget<PrincipalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray900,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 36, top: 35, right: 36, bottom: 35),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 93, right: 18),
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: getVerticalSize(151),
                                      crossAxisCount: 2,
                                      mainAxisSpacing: getHorizontalSize(38),
                                      crossAxisSpacing: getHorizontalSize(38)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.principalModelObj.value
                                  .principalItemList.value.length,
                              itemBuilder: (context, index) {
                                PrincipalItemModel model = controller
                                    .principalModelObj
                                    .value
                                    .principalItemList
                                    .value[index];
                                return PrincipalItemWidget(model);
                              }))),
                      CustomImageView(
                          imagePath: ImageConstant.imgMicrophone1,
                          height: getVerticalSize(99),
                          width: getHorizontalSize(74),
                          radius: BorderRadius.circular(getHorizontalSize(24)),
                          alignment: Alignment.center,
                          margin: getMargin(top: 144))
                    ]))));
  }
}
