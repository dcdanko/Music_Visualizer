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








Song parseSong(){
}
