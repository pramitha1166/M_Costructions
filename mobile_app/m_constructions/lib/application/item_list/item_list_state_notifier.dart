import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/item_list/i_item_list_repository.dart';
import 'package:m_constructions/domain/item_list/product_model.dart';
import 'package:m_constructions/utils/log_utils.dart';

import 'item_list_state.dart';

class ItemListStateNotifier extends StateNotifier<ItemListState> {
  ItemListStateNotifier(this._iItemListRepository)
      : super(ItemListState.initial()) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "ItemListStateNotifier",
    printLog: true,
  );

  final IItemListRepository _iItemListRepository;

  @override
  void dispose() {
    _logUtils.log("dispose");
    super.dispose();
  }

  Future<void> appStart() async {}

  Future<void> readItemList() async {
    state = state.copyWith(
      isLoading: true,
    );

    List<Item> _data = await _iItemListRepository.readItemList();
    state = state.copyWith(isLoading: false, data: _data);
  }

  void deleteItem(List<Item> list, String id) async {
    state = state.copyWith(
      data: list,
    );
    List<Item> _data = await _iItemListRepository.deleteItem(id: id);
  }
}
