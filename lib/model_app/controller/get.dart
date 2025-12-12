import 'dart:convert';
import 'dart:developer';

import 'package:coder_note/model_app/model/note_model.dart';
import 'package:http/http.dart'as http ;

class NoteModelApi {
 Future<List<NoteModel>> getData () async {
   try{
   Uri u =Uri.parse("https://appapi.coderangon.com/api/notes");
    var a = await http.get(u);
    if ( a.statusCode == 200 ){
      var data = jsonDecode(a.body)["notes"];
      for ( int i =0 ; i<data.length; i++){
        log(" ${data[i]["id"]}");
      }
    }



  }catch(error){
     log("Error : $error");

  }
   return [];

  }

  }