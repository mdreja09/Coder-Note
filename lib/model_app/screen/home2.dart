import 'package:coder_note/json_app/widgets/text.dart';
import 'package:coder_note/model_app/model/note_model.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List <NoteModel> list =[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: CustomTextWidget(title: "1010"),
        leading: CustomTextWidget(title: "title"),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(

                tileColor: Colors.blue,
                title: CustomTextWidget(title: "Data "),
              leading: CustomTextWidget(title: "1010"),),
            ),
      ),
    );
  }
}
