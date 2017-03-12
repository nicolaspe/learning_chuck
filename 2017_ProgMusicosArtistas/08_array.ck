// 08_array
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas

TriOsc oscs[5];

for (0 => int i; i < oscs.cap(); i++) {
    oscs[i] => dac;
    Math.random2f(0, 1) / oscs.cap() => oscs[i].gain;
    Math.random2f(220, 881) => oscs[i].freq;
}

1 :: second => now;