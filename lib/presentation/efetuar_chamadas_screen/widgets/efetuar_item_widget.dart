import '../controller/efetuar_chamadas_controller.dart';
import '../models/efetuar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:we_help_you/core/app_export.dart';

// ignore: must_be_immutable
class EfetuarItemWidget extends StatelessWidget {
  EfetuarItemWidget(this.efetuarItemModelObj);

  EfetuarItemModel efetuarItemModelObj;

  var controller = Get.find<EfetuarChamadasController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 10,
        top: 15,
        right: 10,
        bottom: 15,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: getPadding(
              top: 39,
            ),
            child: SizedBox(
              width: getHorizontalSize(
                50,
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
          ),
        ],
      ),
    );
  }
}
