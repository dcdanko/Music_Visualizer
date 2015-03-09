int songI = 0;
  
void startNextSong(){
  if(songI < songNames.length){
    AudioPlayer a = minim.loadFile(songNames[songI]);
    a.play();
    players.add(a);
    songs.add(new Song(millis()/1000));
    songI++;
  }
  
}

  
