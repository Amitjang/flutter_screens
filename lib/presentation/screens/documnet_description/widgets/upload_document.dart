import 'package:flutter/material.dart';
import 'package:screen_1/core/colors/app_colors.dart';
class UploadDocumnet extends StatelessWidget {
  const UploadDocumnet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  _genrateList("sfadsf.jpg","remove" ),
  _genrateList("asdfdasfasf.pdf", "remove"),
  _genrateList("asdfdasfasf.pdf", "remove"),
  _genrateList("asdfdasfasf.pdf", "remove"),

],
    );
  }
  _genrateList(key,value){
    return
Row(
  children: [
    Expanded(
      child: Text("•$key",style: const TextStyle(
        fontSize: 12,
        color: blue0xFF1B2C41
      ),),
    ),
    const SizedBox(width: 10,),
    Text(value,style:const TextStyle(
      fontSize: 11,
      color: red0xFFE22121
    ),)
  ],
);

  }
}


