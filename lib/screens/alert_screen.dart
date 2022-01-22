import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void handleDisplayDialog(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, // "TRUE" Cierra el dialogo cuando hace click en el overlay
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            elevation: 5,
            title: const Text('Titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () => handleDisplayDialog(context),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Mostrar alerta', style: TextStyle(fontSize: 14)),
              ))),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close)),
    );
  }
}
