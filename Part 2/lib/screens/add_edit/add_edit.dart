import 'package:flutter/material.dart';
 

class AddEditNote extends StatefulWidget {
  const AddEditNote({ Key? key }) : super(key: key);
   
  @override
  _AddEditNoteState createState() => _AddEditNoteState();
}

class _AddEditNoteState extends State<AddEditNote> {
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 250, 252, 1.0),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(94, 114, 228, 1.0),
        elevation: 0.0,
        title: const Text('Add or edit a note'),        
      ),
      body:Container(
         padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
         
         
      )
    );
  }

 
}