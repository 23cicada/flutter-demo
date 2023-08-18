import 'package:flutter/material.dart';

class FormLearn extends StatefulWidget {
  const FormLearn({super.key});

  @override
  State<FormLearn> createState() => _FormLearnState();
}

class _FormLearnState extends State<FormLearn> {
  final accountCtrl = TextEditingController(text: 'default_account');
  final passworldCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // final accountFocusNode = FocusNode();
  // final passworldFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Form(
        key: _formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              controller: accountCtrl,
              decoration: const InputDecoration(
                labelText: '账号',
                hintText: '请输入账号',
              ),
              validator: (String? value){
                if (value!.length < 8) {
                    return '账号最少8位';
                  }
                  return null;
              },
            ),
            TextFormField(
              controller: passworldCtrl,
              decoration:
                  const InputDecoration(labelText: '密码', hintText: '请输入密码'),
              obscureText: true,
              obscuringCharacter: '*',
            ),
            ElevatedButton(onPressed: (){
              if (_formKey.currentState!.validate()) {
                debugPrint(accountCtrl.text);
                debugPrint(passworldCtrl.text);
              }
            }, child: const Text('Submit'))
          ],
        ),
      ),
      // body: Column(
      //   children: [
      //     TextField(
      //       controller: accountCtrl,
      //       focusNode: accountFocusNode,
      //       decoration: const InputDecoration(
      //         labelText: '账号',
      //         hintText: '请输入账号',
      //       ),
      //     ),
      //     TextField(
      //       controller: passworldCtrl,
      //       focusNode: passworldFocusNode,
      //       decoration: const InputDecoration(
      //         labelText: '密码',
      //         hintText: '请输入密码'
      //       ),
      //       obscureText: true,
      //       obscuringCharacter: '*',
      //     ),
      //     OutlinedButton(onPressed: (){
      //       accountFocusNode.requestFocus();
      //     }, child: const Text('Focus TextField'))
      //   ],
      // ),
    );
  }
}
