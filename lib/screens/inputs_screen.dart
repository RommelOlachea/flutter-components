import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Rommel',
      'last_name': 'Olachea',
      'email': 'msc.rommel.olachea@gmail.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del usuario',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del usuario',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del usuario',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Password',
                    hintText: 'Password del usuario',
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        print(formValues);
                      },
                      child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: Text('Guardar')),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
