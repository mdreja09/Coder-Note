import 'dart:convert';
import 'dart:developer';

import 'package:coder_note/model_app/model/note_model.dart';
import 'package:http/http.dart'as http ;

class NoteModelApi {
 Future<List<NoteModel>> getData () async {
   try{
   Uri u =Uri.parse("https://appapi.coderangon.com/api/notes");
    var r = await http.get(u);




   if ( r.statusCode == 200 ){
      var data = jsonDecode(r.body)["notes"];
      List<NoteModel> a = [];

      for ( int i =0 ; i<data.length; i++){
        log(" ${data[i]["id"]}");




       var m = NoteModel(

          id: data[i]["id"],
          note: data[i]["note"],
          createdAt: data[i]["created_at"],
          updatedAt: data[i]["updated_at"]

        );
       a.add(m);

      }
  return a;

    }




  }catch(e){
     log("Error : $e");

  }
   return [];

  }

  }