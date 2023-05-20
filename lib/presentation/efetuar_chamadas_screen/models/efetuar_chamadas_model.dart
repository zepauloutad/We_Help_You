import 'package:get/get.dart';
import 'efetuar_item_model.dart';
import 'efetuar1_item_model.dart';

class EfetuarChamadasModel {
  Rx<List<EfetuarItemModel>> efetuarItemList =
      Rx(List.generate(9, (index) => EfetuarItemModel()));

  Rx<List<Efetuar1ItemModel>> efetuar1ItemList =
      Rx(List.generate(3, (index) => Efetuar1ItemModel()));
}
