import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/domain/product_model.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/check_invontory_card.dart';

class CheckDelivery extends HookConsumerWidget {
  const CheckDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventoryData = useState([]);
    useEffect(() {
      try {
        var dio = Dio();
        dio
            .get("http://192.168.8.100:5000/api/v2/product/viewall")
            .then((value) => {
                  inventoryData.value = ((value.data["products"] as List)
                      .map((x) => Product.fromJson(x))
                      .toList())
                });
      } catch (error, stacktrace) {
        throw Exception("Exception occured: $error stackTrace: $stacktrace");
      }
    }, const []);

    return ListView.builder(
      itemCount: inventoryData.value.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CheckInvontoryCard(
            title: inventoryData.value[index].title,
          ),
        );
      },
    );
  }
}
