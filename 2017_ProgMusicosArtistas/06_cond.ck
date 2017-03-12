// 06_cond
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas


// Oscilador
SawOsc s1 => dac;
TriOsc s2 => dac;

// Setear gain 0
0.0 => s1.gain => s2.gain;

// Variable float para frequencia
260 => float myFreq;

// Límites de freq 
40 => float min;
1600 => float max;

// aleatorio
Math.random2(0,100) => int chance;
if (chance < 50) {
    <<< "lower than 50">>>;
    // cambiar frecuencia
    Math.random2f(min, max) => myFreq;
    // asignar
    myFreq => s1.freq;
    // PLAY sólo s1
    0.8 => s1.gain;
    0.5 :: second => now;
} else {
    <<< "equal or higher than 50">>>;
    // fijar frecuencia
    340 => s2.freq;
    // definir duración aleatoria y PLAY sólo s2
    0.8 => s2.gain;
    Math.random2f(min, max) :: ms => now;
}
