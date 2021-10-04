import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:m_constructions/presentation/app/widgets/common_email_input.dart';
import 'package:m_constructions/presentation/app/widgets/common_password_input.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';

import '../dashboard.dart';

class AddItem extends StatelessWidget {
  const AddItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 90,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: CommonEmailInput()),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            child: CommonPasswordInput(),
          ),
          SizedBox(
            height: 130,
          ),
          CommonRoundedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            },
          ),
        ],
      ),
    );
  }
}
