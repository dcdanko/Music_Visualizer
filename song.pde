



Song parseSong(){
}


class Note {
  float pitch;
  float time;
  float volume;
 
   // Add getters, constructor 
}
  
class Song {
  Note[] notes;
  
  Song(){}
  
  void addNote(Note n){
    notes = append(notes, n);
  }
  
  void display(){
    // TODO
  }
  
}

class SongSet {
  Song[] songs;
  
  SongSet(){}
  
  void addSong(Song s){
    songs = append(songs, s);
  }
  
  
  void display(){
  }
}
