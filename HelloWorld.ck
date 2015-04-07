for(1 => int i; i<20; i++){
    spork ~ play(i,1);
    0.6::second => now;  
}
17::second => now;  
SinOsc ge => dac;
440 => ge.freq;
2::second => now;
220 => ge.freq;
1::second => now;

spork ~ play(1,5);
fun void play(int cant, int secs)
{   
    for(0 => int i; i<cant; i++)
    {
        SinOsc ge => dac;
        Math.random2f(30,1000) => ge.freq;
        secs::second => now;
        0 => ge.freq; 
    }
}
