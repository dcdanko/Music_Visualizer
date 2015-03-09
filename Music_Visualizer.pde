Minim minim;
AudioPlayer[] players;
Song[] songs;

  void setup(){
    setPlayers();
    
  }
  
  void draw(){
    for(int i=0; i<songs.length; i++){
      parseToSong(songs[i], players[i]);
      songs[i].display();
      noStroke();
      fill(150, 50);
      rect(0,0,width,height);
    }
  }
