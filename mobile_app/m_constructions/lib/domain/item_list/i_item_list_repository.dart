import 'package:m_constructions/domain/item_list/product_model.dart';

abstract class IItemListRepository {
  Future<List<Item>> readItemList();
  Future<List<Item>> deleteItem({String id});
}
