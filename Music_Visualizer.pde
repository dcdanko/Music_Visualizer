Minim minim;
AudioPlayer[] players;
Song[] songs;

  void setup(){
    setPlayers();
    
  }
  
  void draw(){
    for(int i=0; i<songs.length; i++){
      parseToSong(songs[i], players[i]);
    }
  }
