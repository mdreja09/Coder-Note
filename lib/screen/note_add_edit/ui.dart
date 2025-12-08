import 'dart:developer';

import 'package:coder_note/controller/add.dart';
import 'package:coder_note/controller/update.dart';
import 'package:coder_note/widgets/text.dart';
import 'package:flutter/material.dart';

class NoteAddEditScreen extends StatefulWidget {
  const NoteAddEditScreen({
    super.key,
    required this.screenType,
    this.note,
    this.id,
  });
  final String screenType;
  final String? note;
  final int? id;

  @override
  State<NoteAddEditScreen> createState() => _NoteAddEditScreenState();
}

class _NoteAddEditScreenState extends State<NoteAddEditScreen> {
  TextEditingController noteC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    noteC.text = widget.note ?? "";
    log("======${widget.id}=======");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: CustomTextWidget(title: widget.screenType, fs: 25),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () async {
                log("======${noteC.text}========");
                if (widget.screenType == "Note Add") {
                  await NoteAdd.addNote(data: noteC.text);
                } else {
                  await NoteUpdate.noteUpdate(
                    i: widget.id ?? 1,
                    title: noteC.text,
                  );
                }
                Navigator.pop(context);
              },
              child: Icon(Icons.check, color: Colors.green, size: 30),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            controller: noteC,
            maxLines: 1,

            decoration: InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          TextField(
            controller: noteC,
            maxLines: 30,

            decoration: InputDecoration(
              hintText: "Add Note",

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          // ElevatedButton(
          //   onPressed: () async {
          //     log("======${noteC.text}========");
          //     if (widget.screenType == "Note Add") {
          //       await NoteAdd.addNote(data: noteC.text);
          //     } else {
          //       await NoteUpdate.noteUpdate(i: widget.id ?? 0,title: noteC.text);
          //     }
          //     Navigator.pop(context);
          //   },
          //   child: Text("Save"),
          // ),
        ],
      ),
    );
  }
}
