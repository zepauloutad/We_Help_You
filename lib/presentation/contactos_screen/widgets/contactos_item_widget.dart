import '../controller/contactos_controller.dart';
import '../models/contactos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore: must_be_immutable
class ContactosItemWidget extends StatelessWidget {
  ContactosItemWidget(this.contactosItemModelObj);

  ContactosItemModel contactosItemModelObj;

  var controller = Get.find<ContactosController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 17,
      ),
      decoration: AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUser1,
            height: getSize(
              65,
            ),
            width: getSize(
              65,
            ),
            margin: getMargin(
              top: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 1,
              bottom: 1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    contactosItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular24,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Text(
                    "lbl_933_933_933".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular24,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStar11,
            height: getSize(
              50,
            ),
            width: getSize(
              50,
            ),
            margin: getMargin(
              left: 18,
              top: 7,
              bottom: 9,
            ),
          ),
        ],
      ),
    );
  }
}
