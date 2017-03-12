// 05_aumento
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas

SinOsc s => dac;
0.8 => s.gain;

220 => float altura;
10 => int paso;

while(altura < 3000) {
    altura => s.freq;
    altura + paso => altura;
    5 :: ms => now;
}

while(altura > 40) {
    altura => s.freq;
    altura * 0.91 => altura;
    10 :: ms => now;
}