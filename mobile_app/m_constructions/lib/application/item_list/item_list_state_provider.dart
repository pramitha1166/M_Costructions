import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/infrastructure/item_list/provider.dart';

import 'item_list_state.dart';
import 'item_list_state_notifier.dart';

final itemListStateNotifierProvider =
    StateNotifierProvider<ItemListStateNotifier, ItemListState>((ref) {
  final itemListRepository = ref.watch(itemListRepositoryProvider);

  return ItemListStateNotifier(itemListRepository);
});
