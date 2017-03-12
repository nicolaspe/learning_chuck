// 06_cond
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas


// Oscilador
SawOsc s => dac;

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
    myFreq => s.freq;
    // PLAY
    0.5 :: second => now;
} else {
    <<< "equal or higher than 50">>>;
    // fijar frecuencia
    220 => s.freq;
    // definir duración aleatoria y PLAY
    Math.random2f(min, max) :: ms => now;
}
