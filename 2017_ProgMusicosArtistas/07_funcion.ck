// 07_funcion
// por Nicolas Pena-Escarpentier
// marzo 2017
// programacion para musicos y artistas

13 => int ni;
80 => int nf;
4 => int n1;
3 => int n2;
100 :: ms => dur myDuration;

// declaracion funcion arpegiador (idea Joaquin Ibar)
function int arpegiadorJI(int nota, int notaf, int interv1, int interv2, dur myDur) {
    // crear oscilador
    SinOsc s => dac;
    
    while(nota < notaf){
        //primera nora
        Std.mtof(nota) => s.freq;
        myDur => now;
        
        // primer salto
        nota + interv1 => nota;
        Std.mtof(nota) => s.freq;
        myDur => now;
        
        // segundo salto
        nota + interv2 => nota;
        Std.mtof(nota) => s.freq;
        myDur => now;
        
        // pasar a octava sgte
        nota +12 -interv1 -interv2 => nota;
    }
    0.0 => s.gain;
    return 1;
}

// usarlos!
arpegiadorJI(23, 80, 4, 3, myDuration);
arpegiadorJI(27, 80, 3, 4, myDuration);




