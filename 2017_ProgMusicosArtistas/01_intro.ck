// 01_intro a chucK
// por Nicolás Peña-Escarpentier
// marzo 2017
// programación para músicos y artistas

// Mensaje en consola
// <<< "mensaje">>>;
<<< "hola!">>>;

// Primer oscilador
SinOsc s1 => dac;
0.7 => s1.gain;
380 => s1.freq;

// Onda triangular
TriOsc s2 => dac;
0.7 => s2.gain;
440 => s2.freq;

// Onda sierre
SawOsc s3 => dac;
0.7 => s3.gain;
480 => s3.freq;

SqrOsc s4 => dac;
0.5 => s4.gain;
550 => s4.freq;

27 :: second => now;
