import 'package:get/get.dart';
import 'listuserone_item_model.dart';

class ContactosEmergNciaModel {
  Rx<List<ListuseroneItemModel>> listuseroneItemList =
      Rx(List.generate(7, (index) => ListuseroneItemModel()));
}
