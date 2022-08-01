import 'package:flutter/material.dart';
import 'package:pears_trade/pallete/deepBlue.dart';

class AlertDialogBox extends StatelessWidget {
  final String title;
  final String alertMessage;

  AlertDialogBox({
    @required this.title,
    @required this.alertMessage,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        width: double.infinity,
        color: DeepBlue.kToDark,
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      content: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(alertMessage, textAlign: TextAlign.center),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            'Close',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
