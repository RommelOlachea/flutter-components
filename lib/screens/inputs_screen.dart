import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  initialValue: '',
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value == null) return 'Este campo es requerido';
                    return value.length < 3 ? 'Minimo 3 letras' : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Nombre de usuario',
                      labelText: 'Nombre',
                      helperText: 'Solo letras',
                      suffixIcon: Icon(Icons.group_add_outlined),
                      prefixIcon: Icon(Icons.group_outlined),
                      icon: Icon(Icons.assignment_ind_rounded),
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.green)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(10)))),
                )
              ],
            ),
          ),
        ));
  }
}
