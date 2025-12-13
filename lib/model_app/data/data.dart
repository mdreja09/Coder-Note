import 'package:coder_note/model_app/model/note_model.dart';

class Data {
  List<NoteModel> list = [
    NoteModel(
      id: 1,
      note:
          "ListView.builder creates dynamic scrollable lists by calling itemBuilder for each index. It improves performance using lazy loading…”",
      createdAt: "10 Dec 2025",
      updatedAt: "16 Dec 2025",
    ),
    NoteModel(
      id: 2,
      note:
          "You have many ongoing subjects—Flutter, Python, Video Editing, Driving Exam, etc",
      createdAt: "10 Dec 2025",
      updatedAt: "15 Dec 2025",
    ),
    NoteModel(
      id: 3,
      note:
          "Flutter হলো Google-এর তৈরি একটি UI toolkit, যেটা দিয়ে একটি কোড দিয়ে Android, iOS, Web, Desktop—সব প্ল্যাটফর্মের অ্যাপ বানানো যায়।",
      createdAt: "10 Dec 2025",
      updatedAt: "11 Dec 2025",
    ),
    NoteModel(
      id: 4,
      note:
          "Dynamic list বানায়। Only visible items build করে—performance ভালো।",
      createdAt: "10 Dec 2025",
      updatedAt: "12 Dec 2025",
    ),
  ];
}
