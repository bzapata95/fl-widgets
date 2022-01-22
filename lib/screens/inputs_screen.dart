import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs y forms')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          TextFormField(
              autofocus: true,
              initialValue: 'Bryan Zapata',
              autocorrect: false,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.emailAddress,
              obscureText: true, // for password
              onChanged: (value) => print(value),
              validator: (value) {
                if (value == null) return 'Este campo es requerido';
                return value.length < 3 ? 'Mínimo de 3 letras' : null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                  hintText: 'Nombre del usuario',
                  labelText: 'Usuario',
                  helperText: 'Solo letras',
                  suffixIcon: Icon(Icons.group_add_outlined)))
        ]),
      )),
    );
  }
}
