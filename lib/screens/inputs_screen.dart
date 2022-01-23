import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(title: Text('Inputs y forms')),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            TextFormField(
                autofocus: true,
                initialValue: '',
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
                    suffixIcon: Icon(Icons.group_add_outlined))),
            DropdownButtonFormField(
                items: [
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(
                      value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(value: 'Junior', child: Text('Junior')),
                ],
                onChanged: (value) {
                  print(value);
                }),
            ElevatedButton(
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: const Text('Guardar')),
                ),
                onPressed: () {
                  //Ocultar el keyboard
                  FocusScope.of(context).requestFocus(FocusNode());

                  if (!myFormKey.currentState!.validate()) {
                    print('Formulario no valido');
                    return;
                  }

                  print('form values:');
                }),
          ]),
        ),
      )),
    );
  }
}
