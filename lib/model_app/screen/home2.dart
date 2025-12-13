

import 'package:coder_note/json_app/widgets/text.dart';
import 'package:coder_note/model_app/data/data.dart';
import 'package:coder_note/model_app/model/note_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import '../controller/get.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  List<NoteModel> list = [];

  fetchData() async {
    await Future.delayed(Duration(seconds: 3));

   list = await NoteModelApi().getData();
    setState(() {});

  }

  @override
  void initState() {
    fetchData ();


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: CustomTextWidget(
          title: " Model  ",
          color: Colors.white,
          fw: FontWeight.w800,
          fs: 26,
        ),
        leading: CustomTextWidget(title: ""),
      ),
      body: ListView.builder(

        itemCount: list.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(

            tileColor: Colors.blue,
            title: CustomTextWidget(title: " ${list[index].note.toString()} "),
            leading: CustomTextWidget(title: " ${list[index].id.toString()}"),
          ),
        ),
      ),
    );
  }
}
