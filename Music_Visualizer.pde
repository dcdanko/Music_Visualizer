// --------------------------------------------------------------------- LIBRARIES
//import de.voidplus.soundcloud.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
ArrayList<AudioPlayer> players  = new ArrayList<AudioPlayer>();
ArrayList<Song> songs = new ArrayList<Song>();
int time;
String[] songNames = {"Childish Town.mp3", "Bee_Gees_-_Tragedy_(Forever_Kid_Remix).mp3"};
int secs;
  void setup(){
    time = 0;
    size(900,450);
    minim = new Minim(this);
    secs = -1;
  }
  
  void draw(){
    int curTime = millis()/1000;
    if(curTime - secs > 10 || secs < 0){
      secs = curTime;
      startNextSong();
    }
    for(int i=0; i<songs.size(); i++){
      if(i==0){
        stroke(255,83,13,50);
        fill(255,83,13,50);
      } else {
        stroke(41,143,145,30);
        fill(41,143,145,30);
      }
      parseToSong(songs.get(i), players.get(i), curTime);
      songs.get(i).display();
    }
    time++;
  }
