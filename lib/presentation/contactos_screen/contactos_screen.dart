import '../contactos_screen/widgets/contactos_item_widget.dart';
import 'controller/contactos_controller.dart';
import 'models/contactos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ContactosScreen extends GetWidget<ContactosController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray900,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 5,
            right: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 32,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 15,
                        right: 24,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getVerticalSize(
                              45,
                            ),
                            width: getHorizontalSize(
                              270,
                            ),
                            margin: getMargin(
                              top: 3,
                              bottom: 2,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  15,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMagnifier1,
                            height: getSize(
                              50,
                            ),
                            width: getSize(
                              50,
                            ),
                            margin: getMargin(
                              left: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 31,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Expanded(
                              child: Padding(
                                padding: getPadding(
                                  top: 15,
                                ),
                                child: Obx(
                                  () => ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                        height: getVerticalSize(
                                          22,
                                        ),
                                      );
                                    },
                                    itemCount: controller.contactosModelObj
                                        .value.contactosItemList.value.length,
                                    itemBuilder: (context, index) {
                                      ContactosItemModel model = controller
                                          .contactosModelObj
                                          .value
                                          .contactosItemList
                                          .value[index];
                                      return ContactosItemWidget(
                                        model,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              797,
                            ),
                            width: getHorizontalSize(
                              33,
                            ),
                            margin: getMargin(
                              left: 14,
                              bottom: 50,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 9,
                                    ),
                                    child: SizedBox(
                                      height: getVerticalSize(
                                        760,
                                      ),
                                      child: VerticalDivider(
                                        width: getHorizontalSize(
                                          2,
                                        ),
                                        thickness: getVerticalSize(
                                          2,
                                        ),
                                        color: ColorConstant.black900,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDownarrow1,
                                  height: getSize(
                                    30,
                                  ),
                                  width: getSize(
                                    30,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDownarrow2,
                                  height: getSize(
                                    32,
                                  ),
                                  width: getSize(
                                    32,
                                  ),
                                  alignment: Alignment.bottomCenter,
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
            ],
          ),
        ),
      ),
    );
  }
}
