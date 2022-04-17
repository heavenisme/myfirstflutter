import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TextFieldText extends StatefulWidget{
  const TextFieldText({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TextFieldState();
  }

}

class StateLess extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

class TextFieldState extends State<TextFieldText> {
  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    TextEditingController editingController = TextEditingController();
    TextField textField = TextField(
      controller: editingController,
      textAlign: TextAlign.start,
      minLines: 1,
      maxLength: 5,
      maxLines: 1,
      obscureText: true,
      autofocus: true,
      scrollController: scrollController,
      cursorColor: Colors.red,
      style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.singleLineFormatter
      ],
    );
    return Scaffold(
        body: Container(
          child: Column(
            children: [
              textField,
              ElevatedButton(
                  onPressed: ()=>{debugPrint(editingController.text)},
                  child: const Text("Click")
              )
            ],
          ),
        )
    );
  }

}