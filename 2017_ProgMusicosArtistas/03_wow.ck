// 03_wow
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas

// Cosas conectadas en cascada!!
// Impulso > Filtro resonante > Reverb
Impulse imp => ResonZ filt => NRev rev => dac;
// Propiedad del filtro
0.04 => rev.mix;
// Set de propiedades en cadena! (más fácil de programar)
// (los métodos devuelven el mismo valor que recibieron para
// poder hacer cosas en cascada)
100.0 => filt.Q => filt.gain;
while(1) {
    // Método aleatorio entero
    // (random2f devuelve float)
    Std.mtof(Math.random2(60,94)) => filt.freq;
    1.0 => imp.next;
    100 :: ms => now;
}