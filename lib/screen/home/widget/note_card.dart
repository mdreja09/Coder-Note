import 'dart:developer';

import 'package:coder_note/controller/delete.dart';
import 'package:coder_note/screen/note_add_edit/ui.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text.dart';

class NoteCardWidget extends StatefulWidget {
  const NoteCardWidget({
    super.key,
    required this.data,
    required this.onDelete,
    required this.onEdit,
  });
  final Map data;
  final VoidCallback onDelete;

  final VoidCallback onEdit;

  @override
  State<NoteCardWidget> createState() => _NoteCardWidgetState();
}

class _NoteCardWidgetState extends State<NoteCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                "Delete Note",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              content: Text("Are you sure you want to delete this?"),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(width: 20),

                // problem is here no Delete card
                InkWell(
                  onTap: () {
                    log("message");
                    widget.onDelete;
                    setState(() {

                    });


                    },
                  child: Text(
                    "Confirm",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 8,
                child: CustomTextWidget(
                  title: widget.data['note'],
                  color: Colors.black,
                  fs: 15,
                  maxLine: 4,
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  spacing: 15,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(onTap: widget.onEdit, child: Icon(Icons.edit_note)),
                    InkWell(
                      onTap: widget.onDelete,
                      child: Icon(Icons.delete_forever, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
