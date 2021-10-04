import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/dashboard/screens/widgets/check_invontory_card.dart';

class CheckDelivery extends StatelessWidget {
  const CheckDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(10000, (i) => "Item $i");

    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CheckInvontoryCard(),
        );
      },
    );
  }
}
