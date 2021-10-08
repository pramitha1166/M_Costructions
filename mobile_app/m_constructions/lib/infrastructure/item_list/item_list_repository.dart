import 'package:dio/dio.dart';
import 'package:m_constructions/config.dart';
import 'package:m_constructions/domain/item_list/i_item_list_repository.dart';
import 'package:m_constructions/domain/item_list/product_model.dart';

class ItemListRepository extends IItemListRepository {
  @override
  Future<List<Item>> readItemList() async {
    List<Item> data = [];
    try {
      var dio = Dio();
      await dio.get(config.backendUrl + '/api/v2/product/viewall').then(
          (value) => {
                data = ((value.data["products"] as List)
                    .map((x) => Item.fromJson(x))
                    .toList())
              });
    } catch (error, stacktrace) {
      throw Exception("Exception occured: $error stackTrace: $stacktrace");
    }
    return data;
  }
}
