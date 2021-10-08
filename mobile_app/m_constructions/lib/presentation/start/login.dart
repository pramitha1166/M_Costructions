import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m_constructions/application/auth/auth_state_provider.dart';
import 'package:m_constructions/presentation/app/widgets/common_email_input.dart';
import 'package:m_constructions/presentation/app/widgets/common_password_input.dart';
import 'package:m_constructions/presentation/app/widgets/common_rounded_button.dart';
import 'package:m_constructions/presentation/dashboard/dashboard.dart';
import 'package:m_constructions/presentation/start/site_manage_login.dart';

class LoginScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final email = useState('');
    final password = useState('');

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/images/logo.jpeg')),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CommonEmailInput(
                  onChanged: (value) => {email.value = value},
                )),
            Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: CommonPasswordInput(
                  onChanged: (value) => {password.value = value},
                )),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SMLoginScreen()),
                );
              },
              child: Text(
                'Site manager?',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            CommonRoundedButton(
              onPressed: () async {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Dashboard()),
                // );
                if (validateEmail(email.value)) {
                  ref
                      .read(authStateNotifierProvider.notifier)
                      .login(email: email.value, password: password.value);

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                } else {
                  _showMyDialog(context);
                }
              },
            ),
            SizedBox(
              height: 130,
            ),
          ],
        ),
      ),
    );
  }

  bool validateEmail(String email) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    return emailValid;
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Invalid details'),
                Text('Please fill out the above details correctly'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
