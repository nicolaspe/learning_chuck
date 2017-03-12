// 02_time
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas

// Oscilador
SinOsc s1 => dac;
0.7 => s1.gain;
386 => s1.freq;
0.3 :: second => now;

0.0 => s1.gain;
0.1 :: second => now;

0.7 => s1.gain;
420 => s1.freq;
0.5 :: second => now;

0.0 => s1.gain;
0.2 :: second => now;

0.7 => s1.gain;
660 => s1.freq;
0.3 :: second => now;

0.0 => s1.gain;
0.1 :: second => now;

0.7 => s1.gain;
420 => s1.freq;
0.5 :: second => now;
