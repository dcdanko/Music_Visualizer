// --------------------------------------------------------------------- LIBRARIES
import de.voidplus.soundcloud.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

SoundCloud soundcloud;

// ---------------------------------------------------- Minim Parameters 
Minim minim;                                            //minim setup
AudioPlayer player;                                     //calling audioplayer and linking to track (song)
BeatDetect beat;                                        //linking beatdetect(BeatDetect class allows you to analyze an audio stream for beats) to the word beat
BeatListener bl;
FFT fft;
FFT fftLin;
FFT fftLog;
float maxFFT = 0;
boolean kick = false;
boolean hat = false;
boolean snare = false;

minim = new Minim(this);
player = minim.loadFile("The Hush Sound - My Apologies.mp3");
fft = new FFT(player.bufferSize(), player.sampleRate());
player.play();

for(int i = 0; i < 250; i++) {
  float b = fft.getBand(i);
}



void parseSong(Song song, AudioPlayer player, int time){
    int n = 0;
    fft.forward(player.mix);
    n = fft.specSize();
  //-------------------
    for (int i = 0; i < n; i++) {
        vol = fft.getBand(i);
        song.addNote(i,time,vol);
      }
  
}
