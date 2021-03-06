import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatefulWidget {
  final Function(String password) onConfirm;

  TransactionAuthDialog({@required this.onConfirm, });

  @override
  _TransactionAuthDialogState createState() => _TransactionAuthDialogState();
}

class _TransactionAuthDialogState extends State<TransactionAuthDialog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Autenticação'),
      content: TextField(
        controller: _passwordController,
        obscureText: true,
        maxLength: 4,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        style: TextStyle(
          fontSize: 64.0,
          letterSpacing: 24.0,
        ),
      ),
      actions: [
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cancelar'),
        ),
        FlatButton(
          onPressed: () {
            widget.onConfirm(_passwordController.text);
            Navigator.pop(context);
          },
          child: Text('Confirmar'),
        )
      ],
    );
  }
}
