






class Note {
  float pitch;
  float time;
  float volume;
 
   public Note(float p, float t, float v){
     volume = v;
     pitch = p;
     time = t;
   }
   
   float pitch(){
     return pitch;
   }
   
   float time(){
     return time;
   }
   
   float volume(){
     return volume;
   }
}
  
class Song {
  Note[] notes;
  
  Song(){}
  
  void addNote(Note n){
    notes = append(notes, n);
  }
  
  void display(){
    for(i=0; i< notes.length; i++){
      drawOneNote( notes[i]);
    }
  }
  
  void drawOneNote(Note n){
    float theta = 45 * log2( log2( n.pitch() / 440));
    float hyp = n.time();
    float x = width + hyp * cos( theta);
    float y = height - hyp * sin(theta);
    float rad = n.volume();
    ellipse(x,y,rad*2,rad*2);
  }
  
}

float log2(float x){
  return log(x) / log(2);
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
