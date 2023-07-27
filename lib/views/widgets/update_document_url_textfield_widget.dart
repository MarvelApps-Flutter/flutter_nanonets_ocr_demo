// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../screens/prediction_page.dart';

class UpdateDocumentUrlTextField extends StatefulWidget {
  const UpdateDocumentUrlTextField({super.key});

  @override
  State<UpdateDocumentUrlTextField> createState() =>
      _UpdateDocumentUrlTextFieldState();
}

class _UpdateDocumentUrlTextFieldState
    extends State<UpdateDocumentUrlTextField> {
  TextEditingController urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(color: kBlack, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: TextFormField(
          controller: urlController,
          style: TextStyle(
              color: kBlack, fontSize: 16, fontWeight: FontWeight.bold),
          decoration: InputDecoration(hintText: "Enter Document URL"),
          onEditingComplete: () {
            if (urlController.text.isNotEmpty) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PredictionScreen(
                    image: null,
                    documentUrl: urlController.text.trim(),
                    isUrl: true,
                  ),
                ),
              );
            }
          },
        ));
  }
}
