

class NoteColumn {
  static final List<String> values = [
    /// Add all fields
    id, title, description
  ];

  static const String id = 'id';
  static const String title = 'title';
  static const String description ='description'; 
}

class Note{
  late String id; 
  late String title; 
  late String description; 

  Note({
    required this.id, 
    required this.title, 
    required this.description }); 

  Note.fromMap(Map<String, dynamic> item): 
    id=item[NoteColumn.id], 
    title = item[NoteColumn.title], 
    description = item[NoteColumn.description];

  Map<String, Object> toMap(){
    return { 
      NoteColumn.id:id,
      NoteColumn.title: title,       
      NoteColumn.description: description,   
    };
  }
}