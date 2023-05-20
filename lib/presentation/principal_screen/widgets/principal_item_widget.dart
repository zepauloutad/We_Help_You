import '../controller/principal_controller.dart';
import '../models/principal_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore: must_be_immutable
class PrincipalItemWidget extends StatelessWidget {
  PrincipalItemWidget(this.principalItemModelObj);

  PrincipalItemModel principalItemModelObj;

  var controller = Get.find<PrincipalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 21,
        top: 7,
        right: 21,
        bottom: 7,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
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
          Padding(
            padding: getPadding(
              top: 14,
            ),
            child: Obx(
              () => Text(
                principalItemModelObj.typeTxt.value,
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
