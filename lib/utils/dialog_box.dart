import 'package:flutter/material.dart';
import 'buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 231, 219, 111),
      content: Container(
        height: 125,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //save button
                MyButton(
                  name: 'Save',
                  onPressed: onSave,
                ),

                SizedBox(
                  width: 10,
                ),
                //cancel button
                MyButton(
                  name: 'Cancel',
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
