

void setPlayers(){
  minim = new Minim(this);
  makeAndStartPlayers();
  makeSongs();
}
  
void makeAndStartPlayers(){
  for(int i=0; i<songNames.length; i++){
    AudioPlayer a = minim.loadFile(songNames[songI]);
    a.play();
    players.add(a);
  }
}

void makeSongs(){
  for(int i=0; i<songNames.length; i++){
    songs.add(new Song());
  }
}
  
