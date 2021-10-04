import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

class CheckInvontoryCard extends StatelessWidget {
  const CheckInvontoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'swdsdsd',
                style: TextStyle(fontSize: 18),
              ),
              CommonRoundedButton(
                height: 30,
                lable: 'Add',
                width: 80,
                fontSize: 12,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
