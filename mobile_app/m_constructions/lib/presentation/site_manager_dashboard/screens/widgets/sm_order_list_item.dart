import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

class SmOrderListItem extends HookConsumerWidget {
  const SmOrderListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = useState(0);
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Metal Chip'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Quantity : Cubes'),
                ],
              ),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text(count.value.toString())),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonRoundedButton(
                    height: 30,
                    lable: '+',
                    width: 80,
                    fontSize: 12,
                    onPressed: () {
                      count.value++;
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CommonRoundedButton(
                    height: 30,
                    lable: '-',
                    width: 80,
                    fontSize: 12,
                    onPressed: () {
                      count.value > 0 ? count.value-- : print("none");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
