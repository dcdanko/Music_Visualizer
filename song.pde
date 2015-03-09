






class Note {
  int band;
  float time;
  float volume;
 
   public Note(int b, float t, float v){
     volume = v;
     band = b;
     time = t;
   }
   
   float band(){
     return band;
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
    float theta = PI * (n.band() / 255);
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
    for(i=songs.length-1; i>=0; i--){
      displayOneSong(songs(i));
      displayInterSong();
    }
  }
  
  displayOneSong(Song s){
    s.display();
  }
  
  displayInterSong(){
    noStroke();
    fill(150, 50);
    rect(0,0,width,height);
  }
  
  }
}
