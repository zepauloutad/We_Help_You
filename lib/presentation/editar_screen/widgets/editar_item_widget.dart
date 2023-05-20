import '../controller/editar_controller.dart';
import '../models/editar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore: must_be_immutable
class EditarItemWidget extends StatelessWidget {
  EditarItemWidget(this.editarItemModelObj);

  EditarItemModel editarItemModelObj;

  var controller = Get.find<EditarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 6,
        top: 7,
        right: 6,
        bottom: 7,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPhonecall1,
                  height: getSize(
                    75,
                  ),
                  width: getSize(
                    75,
                  ),
                  margin: getMargin(
                    top: 15,
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
                  margin: getMargin(
                    left: 1,
                    bottom: 60,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 14,
            ),
            child: Obx(
              () => Text(
                editarItemModelObj.typeTxt.value,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtInterRegular24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
