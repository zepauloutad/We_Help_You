import 'package:get/get.dart';
import 'principal_item_model.dart';

class PrincipalModel {
  Rx<List<PrincipalItemModel>> principalItemList =
      Rx(List.generate(6, (index) => PrincipalItemModel()));
}
