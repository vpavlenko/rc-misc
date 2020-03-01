<CsoundSynthesizer>
<CsOptions>
-o Render.wav

</CsOptions>
<CsInstruments>
sr 		= 		44100
kr 		= 		441
ksmps 	= 		100
nchnls 	= 		1

		instr  	101
a1   	oscil   10000, 440, 1
       	out      a1
		endin

		instr   102
a1   	foscil 	10000, 440, 1, p4, p5, p6 ;simple 2 operator fm opcode
		out     a1
		endin

		instr   103
a1   	buzz   	10000, 100, p4, 1  ;variable pulse train
       out     a1
		endin

		instr   104
a1 		pluck 	10000, 440, 440, p4, p5, p6, p7   ;karplus-strong plucked string
		out 	a1
		endin

		instr 	105
a1 		grain 	5000, 440, p4, 5000, 10, p5, 1, 3, 1  ;asynchronous granular synthesis
		out 	a1
		endin

		instr 	106
a1 		loscil  10000, p4, 4  ;sample-based looping oscillator
		out 	a1
		endin

</CsInstruments>
<CsScore>
; Function 1 uses the GEN10 subroutine to compute a sine wave
; Function 2 uses the GEN10 subroutine to compute the first sixteen partials of a sawtooth wave
; Function 3 uses the GEN20 subroutine to compute a Hanning window for use as a grain envelope
; Function 4 uses the GEN01 subroutine to read in an AIF audio file

f 1  0 65536 10   1 ;.1 .5 .7 .9 0 0 .1 .2 0 0 0 0 .3
f 2  0 4096 10   1  .5 .333 .25 .2 .166 .142 .125 .111 .1 .09 .083 .076 .071 .066 .062
f 22  0  4096  7 1 4096 -1
f 3  0 4097 20   2  1
f 4  0 0    1   "sing.aif" 0 4 0


;inst	start	duration
;i 101		0	  3

;i 102		0	  2  1  0   2
;i 102		3  2  1  0.1   2
;i 102		6  2  1  0.3   2
;i 102		9	  2  1  0.5   2
;i 102		12  2  1  1   2
;i 102		15	  2  1  2   2
;i 102		18  2  1  3   2
;i 102		21	  2  1.1  1   2
;i 102		24  2  1.5  1   2
;i 102		27  2  2  1   2
;i 102		30 2  3  1   2
;i 102		33	  2  3.5  1   2
;
;i 102 0 2 1  1  2
;i 102 3 2 1.01  1  2
;i 102 6 2 1.05  1  2
;i 102 9 2 1.1  1  2
;i 102 12 2 1.2  1  2
;i 102 15 2 1.3  1  2
;i 102 18 2 1.5  1  2
;i 102 21 2 1.9  1  2
;i 102 24 2 1.95  1  2
;i 102 27 2 1.98  1  2
;i 102 30 2 1.99  1  2
;i 102 33 2 1.999  1  2
;i 102 36 2 2  1  2

i 102 0 2 1  1  1
i 102 3 2 1.01  1 1
i 102 6 2 1.05  1  1
i 102 9 2 1.1  1  1
i 102 12 2 1.2  1  1
i 102 15 2 1.3  1  1
i 102 18 2 1.5  1  1
i 102 21 2 1.9  1  1
i 102 24 2 1.95  1  1
i 102 27 2 1.98  1  1
i 102 30 2 1.99  1  1
i 102 33 2 1.999  1  1
i 102 36 2 2  1  1


;i 102		0	  2  1  0   1
;i 102		3  2  1  0.1   1
;i 102		6  2  1  0.3   1
;i 102		9	  2  1  0.5   1
;i 102		12  2  1  1   1
;i 102		15	  2  1  2   1
;i 102		18  2  1  3   1
;i 102		21	  2  1.1  1   1
;i 102		24  2  1.5  1   1
;i 102		27  2  2  1   1
;i 102		30 2  3  1   1
;i 102		33	  2  3.5  1   1


;i 103 0 2 1
;i 103 3 2 2
;i 103 6 2 3
;i 103 9 2 4
;i 103 12 2 5
;i 103 15 2 6
;i 103 18 2 7
;i 103 21 2 8
;


;i 103  	8       3
;i 104    	0      2    2   1
;i 104    	3      2    2   3   0.01
;i 104    	6      2    2   3   0.05
;i 104    	9      2    2   3   0.1
;i 104    	12      2    4   1
;i 104    	15      2    2   2   1
;i 104    	18      2    2   2   1.2
;i 104    	21      2    2   2   1.4
;i 104    	24      2    4   2
;i 104    	27      2    2   3   0.15
;i 104    	30      2    2   3   0.2
;i 104    	33      2    2   3   0.25


;i 105     	0      2    55    0.03
;i 105     	3      2    55    0.05
;i 105     	6      2    55    0.07
;i 105     	9      2    10    0.05
;i 105     	12      2    20    0.05
;i 105     	15      2    50    0.05
;i 105     	18      2    100    0.05
;i 105     	21      2    200    0.05
;i 105     	24      2    55    0.01
;i 105     	27      2    55    0.02
;i 105     	30      2    55    0.10
;i 105     	33      2    55    0.30

;i 106     	0      2.3  440
;i 106     	3      2.3  220
;i 106     	6      2.3  880

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>257</x>
 <y>68</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
