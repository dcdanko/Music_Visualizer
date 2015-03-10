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
String[] songNames = {"1949- HITS ARCHIVE_ Riders In The Sky - Vaughn Monroe (a #1 record).mp3",  
                      "1954- HITS ARCHIVE_ Little Things Mean A Lot - Kitty Kallen (a #1 record).mp3",  
                      "1959-Johnny Horton - The Battle of New Orleans.mp3",  "1964-The Beatles - I Want To Hold your Hand [HD].mp3",  
                      "1969-Sugar Sugar - The Archies.mp3",  "1974-Barbra Streisand - The Way We Were.mp3",  
                      "1979-The Knack - My Sharona (Original Recording) [HQ].mp3",  "1984-Prince_The_Revolution_When_Doves_Cry-8464027.mp3",  
                      "1989-Chicago_ Look Away.mp3",  "1994-Ace of Base - I saw the sign.mp3",  "1999-Cher - Believe(1986 Original) HD Audio.mp3",  
                      "2004-Usher feat. Lil'Jon & Ludacris - Yeah.mp3",  "2009-The Black Eyed Peas - Boom Boom Pow.mp3",  
                      "2014-Pharrell Williams - Happy (Official Music Video).mp3"};
int allAlpha = 7;

color[] cols = {color(137,   16,  116, allAlpha),
color(90,   0,   141, allAlpha),
color(29,   0,   102, allAlpha),
color(22,   6,   143, allAlpha),
color(2,     15,  188, allAlpha),
color(8,     96,  205, allAlpha),
color(79,   165, 254, allAlpha),
color(2,     190, 192, allAlpha),
color(0,     210, 133, allAlpha),
color(0,     210, 10, allAlpha),
color(119,   229, 0, allAlpha),
color(182,   241, 3, allAlpha),
color(236,   251, 0, allAlpha),
color(255,   255, 0, allAlpha)};
                    

  void setup(){
    setPlayers();
    time = 0;
    size(900,450);
  }
  
  void draw(){
    for(int i=0; i<songs.size(); i++){
        stroke(cols[i],50);
        fill(cols[i],50);
      parseToSong(songs.get(i), players.get(i), time);
      songs.get(i).display();
    }
    time++;
  }
