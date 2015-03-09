Minim minim;
AudioPlayer[] players;
Song[] songs;
int time;

  void setup(){
    setPlayers();
    time = 0;
  }
  
  void draw(){
    for(int i=0; i<songs.length; i++){
      parseToSong(songs[i], players[i], time);
      songs[i].display();
    }
    time++;
  }
