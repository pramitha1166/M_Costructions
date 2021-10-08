import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m_constructions/domain/item_list/product_model.dart';

part 'item_list_state.freezed.dart';

@freezed
class ItemListState with _$ItemListState {
  const factory ItemListState({
    required bool isLoading,
    required List<Item> data,
  }) = _ItemListState;

  factory ItemListState.initial() =>
      const ItemListState(isLoading: false, data: []);
}
