<CsoundSynthesizer>
<CsOptions>
-d -odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr white_noise
iBit        =       p4 ; 0 = 16 bit, 1 = 31 bit
;input of rand: amp, fixed seed (0.5), bit size
aNoise      rand    .1, 0.5, iBit
            outs    aNoise, aNoise
endin
</CsInstruments>
<CsScore>
i "white_noise" 0 10 0
i "white_noise" 11 10 1
</CsScore>
</CsoundSynthesizer>