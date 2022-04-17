
import 'package:flutter/material.dart';

class ButtonStateTest extends StatefulWidget{
  final bool enable;

  const ButtonStateTest(this.enable, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ButtonState(enable);
  }
}

class ButtonState extends State<ButtonStateTest> {
  bool enable;
  ButtonState(this.enable);
  @override
  Widget build(BuildContext context) {
      return ElevatedButton(
        onPressed: (){
          setState(() {
            enable = !enable;
          });
        },
        child: Text(
            enable? "Enable":"Disable",
            style: TextStyle(
            color: enable?Colors.red:Colors.grey
                    )
        )
      );
  }

}