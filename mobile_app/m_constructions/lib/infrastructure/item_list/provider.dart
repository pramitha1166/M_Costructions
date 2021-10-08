import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/item_list/i_item_list_repository.dart';
import 'package:m_constructions/infrastructure/item_list/item_list_repository.dart';

final itemListRepositoryProvider =
    Provider<IItemListRepository>((ref) => ItemListRepository());
