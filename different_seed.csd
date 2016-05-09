<CsoundSynthesizer>
<CsOptions>
-d -odac -m0
</CsOptions>
<CsInstruments>
;Example by Joachim Heintz
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr generate
; get seed: 0 = seeding from system clock
; otherwise = fixed seed
        seed p4
; generate 4 notes to be played from subinstr
iNoteCount =    0
 until iNoteCount == 4 do
iFreq   random  200, 1000
        event_i "i", "play", iNoteCount, 2, iFreq
iNoteCount +=   1 ;increase note count
 enduntil
endin

instr play
iFreq       =       p4
            print   iFreq
aImp        mpulse  .5, p3
aMode       mode    aImp, iFreq, 1000
aEnv        linen   aMode, 0.01, p3, p3-0.01
            outs    aEnv, aEnv
endin
</CsInstruments>
<CsScore>
;repeat 3 times with fixed seed
r 3
i "generate" 0 2 1
; repeat 3 times with seed from system clock
r 3
i "generate" 0 1 0

</CsScore>
</CsoundSynthesizer>
