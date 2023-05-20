import 'package:get/get.dart';
import 'contactos_item_model.dart';

class ContactosModel {
  Rx<List<ContactosItemModel>> contactosItemList =
      Rx(List.generate(7, (index) => ContactosItemModel()));
}
