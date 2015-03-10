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

color[] cols = {color(36,198,200, allAlpha),
color(39,189,216 , allAlpha),
color(42,180,211 , allAlpha),
color(46,171,207 , allAlpha),
color(49,163,202 , allAlpha),
color(52,154,198 , allAlpha),
color(55,145,193 , allAlpha),
color(58,136,189 , allAlpha),
color(62,127,184 , allAlpha),
color(65,118,180 , allAlpha),
color(68,109,175 , allAlpha),
color(71,101,171 , allAlpha),
color(74,92,166 , allAlpha),
color(78,83,162 , allAlpha)};
                    

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
