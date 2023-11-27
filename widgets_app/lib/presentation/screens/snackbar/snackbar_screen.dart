import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});
  void showCustomSnackBar(BuildContext context) {
    //eliminar snackbars anteriores
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    //builder se construye en tiempo de ejecucion
    showDialog(
        context: context,
        //para no poder cerrar el modal
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('Estas seguro?'),
              content: const Text(
                  'Occaecat cillum laboris magna commodo est labore occaecat laboris irure id Lorem cupidatat. Tempor occaecat nostrud quis in sit dolore sint voluptate non in exercitation velit. Duis adipisicing dolore proident fugiat occaecat ipsum mollit irure adipisicing. Amet excepteur cupidatat do commodo sint non sit culpa quis dolore nisi esse dolor. Nisi ex laboris ut enim laborum non do ullamco sunt.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Fugiat enim ex esse qui veniam labore voluptate.Anim incididunt cupidatat anim cillum aliquip consectetur nulla occaecat sunt. Culpa nulla eiusmod fugiat cupidatat veniam elit sunt elit irure esse tempor nostrud culpa culpa. Occaecat incididunt mollit velit nostrud pariatur qui proident. Eu laborum amet esse excepteur pariatur.')
                  ]);
                },
                child: const Text('Licencias Usadas')),
            FilledButton(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo de pantalla')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context),
      ),
    );
  }
}
