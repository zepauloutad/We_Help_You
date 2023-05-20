import 'package:get/get.dart';
import 'editar_item_model.dart';

class EditarModel {
  Rx<List<EditarItemModel>> editarItemList =
      Rx(List.generate(4, (index) => EditarItemModel()));
}
