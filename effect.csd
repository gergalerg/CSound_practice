<CsoundSynthesizer>
<CsOptions>
-iadc -odac
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
aInL inch 1
aInR inch 2
aCombL comb aInL, 3, .5
aCombR comb aInR, 3, .7
out aCombL, aCombR
endin

</CsInstruments>
<CsScore>
i1 0 1000
</CsScore>
</CsoundSynthesizer>