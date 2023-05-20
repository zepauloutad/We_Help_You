import '../controller/efetuar_chamadas_controller.dart';
import '../models/efetuar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore: must_be_immutable
class Efetuar1ItemWidget extends StatelessWidget {
  Efetuar1ItemWidget(this.efetuar1ItemModelObj);

  Efetuar1ItemModel efetuar1ItemModelObj;

  var controller = Get.find<EfetuarChamadasController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: getHorizontalSize(
            65,
          ),
          padding: getPadding(
            left: 26,
            top: 2,
            right: 26,
            bottom: 2,
          ),
          decoration: AppDecoration.txtFillGray100.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
          ),
          child: Obx(
            () => Text(
              efetuar1ItemModelObj.groupthirtyfourTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular24,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            65,
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
          child: Obx(
            () => Text(
              efetuar1ItemModelObj.groupthirtythreTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular24,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            65,
          ),
          padding: getPadding(
            left: 23,
            top: 2,
            right: 23,
            bottom: 2,
          ),
          decoration: AppDecoration.txtFillGray100.copyWith(
            borderRadius: BorderRadiusStyle.txtRoundedBorder8,
          ),
          child: Obx(
            () => Text(
              efetuar1ItemModelObj.groupthirtytwoTxt.value,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterRegular24,
            ),
          ),
        ),
      ],
    );
  }
}
