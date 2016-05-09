<CsoundSynthesizer>
<CsOptions>
-odac
</CsOptions>
<CsInstruments>
;Example by Joachim Heintz
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
asig    oscils  .2, p4, 0
        outs    asig, asig
endin
instr 2
asig    oscils  .2, p4, 0
        outs    asig, asig
endin
</CsInstruments>
<CsScore>
i 1 0 2 1000 ;1000 Hz tone
i 2 3 2 1000; 43100 Hz tone sounds like 1000 Hz because of aliasing.
</CsScore>
</CsoundSynthesizer>
