import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SnackBarExample extends StatefulWidget{
  const SnackBarExample({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
     return SnackBarExampleState();
  }

}

class SnackBarExampleState extends State<SnackBarExample>{
  @override
  Widget build(BuildContext context) {
    return Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             ElevatedButton(
                 onPressed: (){
                   Get.snackbar(
                       "snackbar",
                       "欢迎使用snackbar",
                        colorText: Colors.pink,
                        duration: const Duration(milliseconds: 5000),
                        instantInit: false
                   );
                 },
                 child: const Text("现实snackbar")
             )
           ],
         ),
       );
  }
  
}