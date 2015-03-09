






class Note {
  int band;
  int time;
  float volume;
 
   public Note(int b, int t, float v){
     volume = v;
     band = b;
     time = t;
   }
   
   float band(){
     return band;
   }
   
   int time(){
     return time;
   }
   
   float volume(){
     return volume;
   }
}
  
class Song {
  ArrayList<Note> notes = new ArrayList<Note>();
  
  Song(){}
  
  void addNote(Note n){
    notes.add(n);
  }
  
  void display(){
    for(int i=0; i< notes.size(); i++){
      drawOneNote( notes.get(i));
    }
  }
  
  void drawOneNote(Note n){
    if(n.volume() > 2){
      float theta = PI * (n.band() / 255);
      float hyp = 2*n.time()+40;
      float x = (width/2) + hyp * cos( theta);
      float y = height - hyp * sin(theta);
      float rad = 0.1 * n.volume();
      ellipse(x,y,rad*2,rad*2);
    }
  }
  
}

float log2(float x){
  return log(x) / log(2);
}



