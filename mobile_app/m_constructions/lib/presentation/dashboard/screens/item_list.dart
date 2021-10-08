import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/application/item_list/item_list_state_provider.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/item_row.dart';

class ItemList extends HookConsumerWidget {
  const ItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(
        Duration.zero,
        () => ref.read(itemListStateNotifierProvider.notifier).readItemList(),
      );
    }, const []);

    final isLoading = ref.watch(
        itemListStateNotifierProvider.select((value) => value.isLoading));

    final listData =
        ref.watch(itemListStateNotifierProvider.select((value) => value.data));

    return Visibility(
      visible: !isLoading,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        child: Center(child: Text('Item')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: Center(child: Text('Quantity')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        child: Center(child: Text('Action')),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // inventoryData.value
              for (var value in listData) ItemRow(),

              SizedBox(
                height: 100,
              ),
              CommonRoundedButton(
                lable: "Send Item List",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
