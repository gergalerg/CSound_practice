<CsoundSynthesizer>
<CsOptions>
-o dac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 441
nchnls = 2
0dbfs = 1

instr 1
iAmp = p4;
iFreq = p5
; -- move from 0 to 1 in the duration of this call
kPan line 0, p3, 1
aNote   oscils  iAmp, iFreq, 0 ;create an audio signal
aL, aR  pan2    aNote, kPan ; let the signal move let to right
        outs    aL, aR ; write to output
endin
</CsInstruments>
<CsScore>
i 1 0 3 0.2 443
</CsScore>
</CsoundSynthesizer>

