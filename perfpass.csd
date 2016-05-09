<CsoundSynthesizer>
<CsInstruments>
sr = 44100
ksmps = 44 

instr 1
kCount init 0;
kCount = kCount + 1
        printk 0, kCount;
endin

</CsInstruments>
<CsScore>
i 1 0 1
</CsScore>
</CsoundSynthesizer>
