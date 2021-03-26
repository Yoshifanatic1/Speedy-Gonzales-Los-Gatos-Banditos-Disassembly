
%SPCDataBlockStart(0400)
	DI
	CLRP
	MOV X, #$FF
	MOV SP, X
	MOV A, #$20
	MOV Y, #$6C
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$FF
	MOV Y, #$6D
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$00
	MOV Y, #$4D
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$0D
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$7D
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$2C
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$3C
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$00
	MOV X, #$00
	CALL CODE_04EA
	MOV X, #$00
CODE_043E:
	MOV A, DATA_044F+x
	MOV Y, A
	CMP Y, #$FF
	BEQ CODE_049F
	MOV A, #$00
	MOV $F2, Y
	MOV $F3, A
	INC X
	BNE CODE_043E				; Note: This will always branch.

DATA_044F:
	db $00,$01,$02,$03,$04,$05,$06,$07,$10,$11,$12,$13,$14,$15,$16,$17
	db $20,$21,$22,$23,$24,$25,$26,$27,$30,$31,$32,$33,$34,$35,$36,$37
	db $40,$41,$42,$43,$44,$45,$46,$47,$50,$51,$52,$53,$54,$55,$56,$57
	db $60,$61,$62,$63,$64,$65,$66,$67,$70,$71,$72,$73,$74,$75,$76,$77
	db $0C,$1C,$2C,$3C,$4C,$5C,$2D,$3D,$1F,$2F,$3F,$4F,$5F,$6F,$7F,$FF

CODE_049F:
	MOV A, #$7F
	MOV Y, #$0F
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$7F
	MOV Y, #$0C
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$1C
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$30
	MOV $F1, A
	MOV A, #$FF
	MOV $FA, A
	MOV A, #$38
	MOV $FB, A
	MOV A, #$FF
	MOV $FC, A
	MOV A, #$07
	MOV $F1, A
	MOV A, #$17
	MOV Y, #$5D
	MOV $F2, Y
	MOV $F3, A
	MOV A, #$FF
	MOV $8A, A
	MOV $89, A
	MOV A, #$1E
	MOV $87, A
	MOV A, #$03
	MOV $88, A
	MOV A, #$01
	MOV $F4, A
	MOV A, #$80
	MOV $9F, A
	JMP CODE_0585

CODE_04EA:
	MOV $0200+x, A
	MOV $0300+x, A
	INC X
	BNE CODE_04EA
	MOV X, #$EF
CODE_04F5:
	MOV $00+x, A
	DEC X
	BNE CODE_04F5
	MOV $00+x, A
	RET

CODE_04FD:
	PUSH A
	MOV $83, Y
	MOV A, X
	CLRC
	ADC A, $83
	MOV Y, A
	POP A
	MOV $F2, Y
	MOV $F3, A
	RET

CODE_050B:
	MOV $83, Y
	MOV A, X
	CLRC
	ADC A, $83
	MOV Y, A
	MOV $F2, Y
	MOV A, $F3
	RET

CODE_0517:
	MOV A, $00+x
	MOV $0285+x, A
	MOV A, $01+x
	MOV $0286+x, A
	MOV A, $03+x
	MOV $0287+x, A
	MOV A, $04+x
	MOV $0288+x, A
	MOV A, $0282+x
	MOV $0300+x, A
	MOV A, $0283+x
	MOV $0301+x, A
	MOV A, $0284+x
	MOV $0302+x, A
	MOV A, $0A+x
	MOV $0303+x, A
	MOV A, $08+x
	MOV $0304+x, A
	MOV A, $0D+x
	MOV $0305+x, A
	MOV A, $0E+x
	MOV $0306+x, A
	MOV A, $0B+x
	MOV $0307+x, A
	MOV A, $0C+x
	MOV $0308+x, A
	MOV A, $02+x
	MOV $0309+x, A
	MOV A, $0281+x
	MOV $030A+x, A
	MOV A, $0207+x
	MOV $030B+x, A
	MOV A, $020C+x
	MOV $030C+x, A
	MOV A, $020D+x
	MOV $030D+x, A
	MOV A, $020E+x
	MOV $030E+x, A
	MOV A, $020F+x
	MOV $030F+x, A
	RET

CODE_0585:
	MOV A, #$00
	MOV $F7, A
	MOV A, $F4
	BNE CODE_058F
	BRA CODE_05A2

CODE_058F:
	ASL A
	MOV X, A
	MOV A, #$00
	MOV $F7, A
CODE_0595:
	MOV A, $F4
	BEQ CODE_0595
	MOV A, #$FF
	MOV $F7, A
	CALL CODE_05BF
	BRA CODE_0585

CODE_05A2:
	MOV A, #$01
	CMP A, $FD
	BNE CODE_05AB
	CALL CODE_0877
CODE_05AB:
	MOV A, #$01
	CMP A, $FE
	BNE CODE_05B4
	CALL CODE_090D
CODE_05B4:
	MOV A, #$01
	CMP A, $FF
	BNE CODE_0585
	CALL CODE_112D
	BRA CODE_0585

CODE_05BF:
	CMP X, #$18
	BEQ CODE_0632
	CMP X, #$1A
	BEQ CODE_05CD
	JMP CODE_05CA

CODE_05CA:
	JMP (DATA_066B+x)

CODE_05CD:
	POP A
	POP A
	MOV A, #$04
	MOV $B4, A
CODE_05D3:
	CALL CODE_060D
	MOV Y, #$00
	MOV A, $F5
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_060A
	BMI CODE_060A
	MOV A, $F6
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_060A
	BMI CODE_060A
	MOV A, $F7
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_060A
	BMI CODE_060A
	MOV A, #$00
	MOV $F7, A
CODE_0600:
	MOV A, $F4
	BEQ CODE_0600
	MOV A, #$FF
	MOV $F7, A
	BRA CODE_05D3

CODE_060A:
	JMP CODE_0585

CODE_060D:
	DEC $B4
	BEQ CODE_0612
	RET

CODE_0612:
	MOV A, #$04
	MOV $B4, A
	MOV A, #$01
	CMP A, $FD
	BNE CODE_061F
	CALL CODE_0877
CODE_061F:
	MOV A, #$01
CODE_0621:
	CMP A, $FE
	BNE CODE_0628
	CALL CODE_090D
CODE_0628:
	MOV A, #$01
	CMP A, $FF
	BNE CODE_0631
	CALL CODE_112D
CODE_0631:
	RET

CODE_0632:
	POP A
	POP A
CODE_0634:
	MOV Y, #$00
	MOV A, $F5
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_0668
	BMI CODE_0668
	MOV A, $F6
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_0668
	BMI CODE_0668
	MOV A, $F7
	MOV ($A6)+y, A
	INCW $A6
	DECW $A8
	BEQ CODE_0668
	BMI CODE_0668
	MOV A, #$00
	MOV $F7, A
CODE_065E:
	MOV A, $F4
	BEQ CODE_065E
	MOV A, #$FF
	MOV $F7, A
	BRA CODE_0634

CODE_0668:
	JMP CODE_0585

DATA_066B:
	dw CODE_06A9
	dw CODE_06A9
	dw CODE_10B9
	dw CODE_07AF
	dw CODE_07B8
	dw CODE_07C1
	dw CODE_07E2
	dw CODE_0805
	dw CODE_0812
	dw CODE_0817
	dw CODE_081A
	dw CODE_0823
	dw CODE_084A
	dw CODE_084A
	dw CODE_084A
	dw CODE_0853
	dw CODE_068F
	dw CODE_0858

CODE_068F:
	MOV A, $020A
	CMP A, $F6
	BCC CODE_0699
	BEQ CODE_0699
	RET

CODE_0699:
	MOV A, #$80
	MOV $9F, A
	MOV $A4, A
	MOV A, $A3
	BNE CODE_06AD
	MOV A, #$80
	MOV $A3, A
	BRA CODE_06B7

CODE_06A9:
	MOV A, #$00
	MOV $A4, A
CODE_06AD:
	MOV A, $020A
	CMP A, $F6
	BCC CODE_06B7
	BEQ CODE_06B7
	RET

CODE_06B7:
	MOV A, $F6
	MOV $020A, A
	MOV A, #DATA_1300
	MOV $AE, A
	MOV A, #DATA_1300>>8
	MOV $AF, A
	MOV A, $F5
	ASL A
	ASL A
	ASL A
	ASL A
	BCC CODE_06CE
	INC $AF
CODE_06CE:
	MOV Y, A
	MOV A, ($AE)+y
	MOV $00, A
	INC Y
	MOV A, ($AE)+y
	MOV $01, A
	INC Y
	MOV $02, A
	MOV $07, A
	MOV A, ($AE)+y
	MOV $10, A
	INC Y
	MOV A, ($AE)+y
	MOV $11, A
	INC Y
	MOV $12, A
	MOV $17, A
	MOV A, ($AE)+y
	MOV $20, A
	INC Y
	MOV A, ($AE)+y
	MOV $21, A
	INC Y
	MOV $22, A
	MOV $27, A
	MOV A, ($AE)+y
	MOV $30, A
	INC Y
	MOV A, ($AE)+y
	MOV $31, A
	INC Y
	MOV $32, A
	MOV $37, A
	MOV A, ($AE)+y
	MOV $40, A
	INC Y
	MOV A, ($AE)+y
	MOV $41, A
	INC Y
	MOV $42, A
	MOV $47, A
	MOV A, ($AE)+y
	MOV $50, A
	INC Y
	MOV A, ($AE)+y
	MOV $51, A
	INC Y
	MOV $52, A
	MOV $57, A
	MOV A, ($AE)+y
	MOV $60, A
	INC Y
	MOV A, ($AE)+y
	MOV $61, A
	INC Y
	MOV $62, A
	MOV $67, A
	MOV A, ($AE)+y
	MOV $70, A
	INC Y
	MOV A, ($AE)+y
	MOV $71, A
	MOV $72, A
	MOV $77, A
CODE_073E:
	MOV X, #$00
	CALL CODE_077E
	MOV X, #$10
	CALL CODE_077E
	MOV X, #$20
	CALL CODE_077E
	MOV X, #$30
	CALL CODE_077E
	MOV X, #$40
	CALL CODE_077E
	MOV X, #$50
	CALL CODE_077E
	MOV X, #$60
	CALL CODE_077E
	MOV X, #$70
	CALL CODE_077E
	MOV A, #$00
	MOV $8E, A
	CALL CODE_19BC
	MOV A, #$FF
	MOV $89, A
	MOV $8A, A
	MOV $A5, A
	MOV A, $A4
	BNE CODE_077D
	MOV A, #$80
	MOV $9F, A
CODE_077D:
	RET

CODE_077E:
	MOV A, #$00
	MOV $0281+x, A
	MOV $0F+x, A
	MOV $0204+x, A
	MOV $0207+x, A
	MOV $08+x, A
	MOV $0205+x, A
	MOV $09+x, A
	MOV $0206+x, A
	MOV $020E+x, A
	MOV $020F+x, A
	MOV $020C+x, A
	MOV $020D+x, A
	MOV $04+x, A
	MOV $06+x, A
	MOV $028A+x, A
	MOV A, #$01
	MOV $03+x, A
	MOV $05+x, A
	RET

CODE_07AF:
	MOV A, $F5
	MOV Y, #$0C
	MOV $F2, Y
	MOV $F3, A
	RET

CODE_07B8:
	MOV A, $F5
	MOV Y, #$1C
	MOV $F2, Y
	MOV $F3, A
	RET

CODE_07C1:
	MOV A, #$00
	MOV $02, A
	MOV $12, A
	MOV $22, A
	MOV $32, A
	MOV $42, A
	MOV $52, A
	MOV $62, A
	MOV $72, A
	MOV $020A, A
	MOV A, #$FF
	MOV Y, #$5C
	MOV $F2, Y
	MOV $F3, A
	CALL CODE_073E
	RET

CODE_07E2:
	MOV A, #$00
	MOV $028A, A
	MOV $029A, A
	MOV $02AA, A
	MOV $02BA, A
	MOV $02CA, A
	MOV $02DA, A
	MOV $02EA, A
	MOV $02FA, A
	MOV A, #$FF
	MOV Y, #$5C
	MOV $F2, Y
	MOV $F3, A
	RET

CODE_0805:
	MOV A, #$00
	MOV $A5, A
	MOV A, #$FF
	MOV Y, #$5C
	MOV $F2, Y
	MOV $F3, A
	RET

CODE_0812:
	MOV A, #$01
	MOV $A5, A
	RET

CODE_0817:
	JMP CODE_19AB

CODE_081A:
	MOV A, $F5
	MOV $A6, A
	MOV A, $F6
	MOV $A7, A
	RET

CODE_0823:
	MOV A, $F5
	MOV $A8, A
	MOV A, $F6
	MOV $A9, A
	MOV A, #$00
	MOV $020A, A
	CALL CODE_19BC
	MOV $F1, A
	MOV A, #$FF
	MOV $FA, A
	MOV A, #$38
	MOV $FB, A
	MOV A, #$FF
	MOV $FC, A
	MOV A, #$07
	MOV $F1, A
	MOV A, #$80
	MOV $9F, A
	RET

CODE_084A:
	MOV A, $F5
	MOV $A8, A
	MOV A, $F6
	MOV $A9, A
	RET

CODE_0853:
	MOV A, $F5
	MOV $AD, A
	RET

CODE_0858:
	MOV A, $F5
	MOV $9F, A
	MOV A, #$06
	MOV $F1, A
	MOV A, $9E
	MOV Y, #$80
	MUL YA
	MOV X, $9F
	DIV YA, X
	MOV X, $9F
	BMI CODE_0870
	CMP A, $9E
	BCC CODE_0872
CODE_0870:
	MOV $FA, A
CODE_0872:
	MOV A, #$07
	MOV $F1, A
	RET

CODE_0877:
	MOV A, $A5
	BNE CODE_087C
	RET

CODE_087C:
	MOV X, #$00
	MOV Y, #$01
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_088D
	CALL CODE_0517
CODE_088D:
	MOV X, #$10
	MOV Y, #$02
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_089E
	CALL CODE_0517
CODE_089E:
	MOV X, #$20
	MOV Y, #$04
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_08AF
	CALL CODE_0517
CODE_08AF:
	MOV X, #$30
	MOV Y, #$08
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_08C0
	CALL CODE_0517
CODE_08C0:
	MOV X, #$40
	MOV Y, #$10
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_08D1
	CALL CODE_0517
CODE_08D1:
	MOV X, #$50
	MOV Y, #$20
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_08E2
	CALL CODE_0517
CODE_08E2:
	MOV X, #$60
	MOV Y, #$40
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_08F3
	CALL CODE_0517
CODE_08F3:
	MOV X, #$70
	MOV Y, #$80
	CALL CODE_0946
	CALL CODE_0EC6
	MOV A, $A4
	BNE CODE_090C
	CALL CODE_0517
	MOV A, $9E
	MOV $B3, A
	MOV A, $9F
	MOV $B5, A
CODE_090C:
	RET

CODE_090D:
	MOV X, #$00
	MOV Y, #$01
	CALL CODE_0F29
	MOV X, #$10
	MOV Y, #$02
	CALL CODE_0F29
	MOV X, #$20
	MOV Y, #$04
	CALL CODE_0F29
	MOV X, #$30
	MOV Y, #$08
	CALL CODE_0F29
	MOV X, #$40
	MOV Y, #$10
	CALL CODE_0F29
	MOV X, #$50
	MOV Y, #$20
	CALL CODE_0F29
	MOV X, #$60
	MOV Y, #$40
	CALL CODE_0F29
	MOV X, #$70
	MOV Y, #$80
	CALL CODE_0F29
	RET

CODE_0946:
	MOV $B2, Y
	MOV A, $02+x
	BNE CODE_094D
	RET

CODE_094D:
	MOV A, $04+x
	CMP A, $06+x
	BNE CODE_096A
	MOV A, $03+x
	CMP A, $05+x
	BNE CODE_096A
	MOV A, $07+x
	BEQ CODE_096A
	MOV A, $0206+x
	BNE CODE_096A
	MOV Y, #$5C
	MOV A, $B2
	MOV $F2, Y
	MOV $F3, A
CODE_096A:
	MOV A, $04+x
	BEQ CODE_097A
	MOV A, $03+x
	BEQ CODE_0975
	DEC $03+x
	RET

CODE_0975:
	DEC $04+x
	DEC $03+x
	RET

CODE_097A:
	DEC $03+x
	BEQ CODE_097F
	RET

CODE_097F:
	MOV A, $00+x
	MOV $B0, A
	MOV A, $01+x
	MOV $B1, A
CODE_0987:
	MOV Y, #$00
	MOV A, ($B0)+y
	BPL CODE_0990
	JMP CODE_0B08

CODE_0990:
	MOV A, $07+x
	BNE CODE_0997
	JMP CODE_0A28

CODE_0997:
	MOV A, $0207+x
	BNE CODE_09A0
	MOV Y, #$01
	MOV A, ($B0)+y
CODE_09A0:
	CLRC
	ASL A
	MOV Y, A
	MOV A, DATA_1600+y
	MOV $80, A
	INC Y
	MOV A, DATA_1600+y
	MOV $81, A
	CALL CODE_0A82
	MOV A, $0206+x
	BNE CODE_09C7
	MOV A, $020C+x
	MOV $020E+x, A
	MOV A, $020D+x
	MOV $020F+x, A
	MOV A, #$01
	MOV $020B+x, A
CODE_09C7:
	MOV Y, #$00
	MOV A, ($B0)+y
	CLRC
	ADC A, $08+x
	CLRC
	ADC A, $09+x
	MOV $9B, A
	MOV A, $0204+x
	BEQ CODE_09DD
	CALL CODE_0E09
	BRA CODE_0A13

CODE_09DD:
	MOV A, $9B
	MOV Y, A
	MOV A, DATA_0FB9+y
	MOV $0209+x, A
	MOV A, $9B
	MOV Y, A
	MOV A, DATA_1039+y
	MOV $0208+x, A
	CALL CODE_0DDD
	CLRC
	MOV A, $0208+x
	ADC A, $9A
	MOV $0208+x, A
	MOV A, $0209+x
	ADC A, $99
	MOV $0209+x, A
	MOV Y, #$02
	MOV A, $0208+x
	CALL CODE_04FD
	MOV Y, #$03
	MOV A, $0209+x
	CALL CODE_04FD
CODE_0A13:
	MOV A, $0206+x
	BNE CODE_0A28
	MOV Y, #$5C
	MOV A, #$00
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$4C
	MOV A, $B2
	MOV $F2, Y
	MOV $F3, A
CODE_0A28:
	MOV Y, #$02
	MOV A, ($B0)+y
	BMI CODE_0A36
	MOV $03+x, A
	MOV A, #$00
	MOV $04+x, A
	BRA CODE_0A50

CODE_0A36:
	MOV Y, #$03
	MOV A, ($B0)+y
	MOV $03+x, A
	MOV Y, #$02
	MOV A, ($B0)+y
	CLRC
	AND A, #$7F
	LSR A
	MOV $04+x, A
	BCC CODE_0A4E
	MOV A, $03+x
	OR A, #$80
	MOV $03+x, A
CODE_0A4E:
	MOV Y, #$03
CODE_0A50:
	INC Y
	MOV A, ($B0)+y
	BMI CODE_0A5D
	MOV $05+x, A
	MOV A, #$00
	MOV $06+x, A
	BRA CODE_0A74

CODE_0A5D:
	INC Y
	MOV A, ($B0)+y
	MOV $05+x, A
	DEC Y
	MOV A, ($B0)+y
	CLRC
	AND A, #$7F
	LSR A
	MOV $06+x, A
	BCC CODE_0A73
	MOV A, $05+x
	OR A, #$80
	MOV $05+x, A
CODE_0A73:
	INC Y
CODE_0A74:
	INC Y
	CLRC
	MOV A, Y
	ADC A, $B0
	MOV $00+x, A
	MOV A, #$00
	ADC A, $B1
	MOV $01+x, A
	RET

CODE_0A82:
	MOV Y, #$00
	MOV A, ($80)+y
	MOV Y, #$04
	CALL CODE_04FD
	MOV A, $AD
	BNE CODE_0ABC
	MOV A, $0281+x
	BEQ CODE_0ABC
	CMP A, #$01
	BNE CODE_0AAA
	MOV A, #$00
	MOV Y, #$00
	CALL CODE_04FD
	MOV Y, #$02
	MOV A, ($80)+y
	MOV Y, #$01
	CALL CODE_04FD
	BRA CODE_0AE8

CODE_0AAA:
	MOV A, #$00
	MOV Y, #$01
	CALL CODE_04FD
	MOV Y, #$01
	MOV A, ($80)+y
	MOV Y, #$00
	CALL CODE_04FD
	BRA CODE_0AE8

CODE_0ABC:
	MOV A, $AD
	BEQ CODE_0AD6
	MOV Y, #$01
	MOV A, ($80)+y
	MOV Y, #$02
	CLRC
	ADC A, ($80)+y
	LSR A
	MOV Y, #$00
	CALL CODE_04FD
	MOV Y, #$01
	CALL CODE_04FD
	BRA CODE_0AE8

CODE_0AD6:
	MOV Y, #$01
	MOV A, ($80)+y
	MOV Y, #$00
	CALL CODE_04FD
	MOV Y, #$02
	MOV A, ($80)+y
	MOV Y, #$01
	CALL CODE_04FD
CODE_0AE8:
	MOV Y, #$03
	MOV A, ($80)+y
	MOV Y, #$05
	CALL CODE_04FD
	MOV Y, #$04
	MOV A, ($80)+y
	MOV Y, #$06
	CALL CODE_04FD
	MOV Y, #$05
	MOV A, ($80)+y
	MOV $09+x, A
	MOV Y, #$06
	MOV A, ($80)+y
	MOV $0205+x, A
	RET

CODE_0B08:
	PUSH X
	AND A, #$7F
	ASL A
	MOV X, A
	JMP (DATA_0B10+x)

DATA_0B10:
	dw CODE_0B32
	dw CODE_0B4B
	dw CODE_0B77
	dw CODE_0B96
	dw CODE_0BA5
	dw CODE_0BC6
	dw CODE_0BD2
	dw CODE_0BDE
	dw CODE_0BEA
	dw CODE_0C53
	dw CODE_0C61
	dw CODE_0C82
	dw CODE_0CA9
	dw CODE_0CBE
	dw CODE_0CCC
	dw CODE_0CE9
	dw CODE_0D06

CODE_0B32:
	POP X
	MOV A, #$00
	MOV $02+x, A
	MOV $020A+x, A
	MOV A, $07+x
	BEQ CODE_0B48
	MOV Y, #$00
	CALL CODE_04FD
	MOV Y, #$01
	CALL CODE_04FD
CODE_0B48:
	JMP CODE_0946

CODE_0B4B:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $08+x, A
	INC Y
	MOV A, ($B0)+y
	MOV $0A+x, A
	INC Y
	MOV A, ($B0)+y
	MOV $00+x, A
	MOV $0D+x, A
	INC Y
	MOV A, ($B0)+y
	MOV $01+x, A
	MOV $0E+x, A
	INC Y
	MOV A, Y
	CLRC
	ADC A, $B0
	MOV $0B+x, A
	BCC CODE_0B70
	INC $B1
CODE_0B70:
	MOV A, $B1
	MOV $0C+x, A
	JMP CODE_097F

CODE_0B77:
	POP X
	DEC $0A+x
	BNE CODE_0B8B
	MOV A, $0B+x
	MOV $00+x, A
	MOV A, $0C+x
	MOV $01+x, A
	MOV A, #$00
	MOV $08+x, A
	JMP CODE_097F

CODE_0B8B:
	MOV A, $0D+x
	MOV $00+x, A
	MOV A, $0E+x
	MOV $01+x, A
	JMP CODE_097F

CODE_0B96:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $00+x, A
	INC Y
	MOV A, ($B0)+y
	MOV $01+x, A
	JMP CODE_097F

CODE_0BA5:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $0204+x, A
	MOV $0F+x, A
	MOV Y, #$02
	MOV A, ($B0)+y
	CLRC
	ADC A, $08+x
	CLRC
	ADC A, $09+x
	MOV $0202+x, A
	MOV A, #$01
	MOV $03+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0BC6:
	POP X
	MOV A, #$00
	MOV $0204+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0BD2:
	POP X
	MOV A, #$01
	MOV $0206+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0BDE:
	POP X
	MOV A, #$00
	MOV $0206+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0BEA:
	POP X
	MOV A, $07+x
	BEQ CODE_0C04
	MOV Y, #$01
	MOV A, ($B0)+y
	CLRC
	ASL A
	MOV Y, A
	MOV A, DATA_1600+y
	MOV $80, A
	INC Y
	MOV A, DATA_1600+y
	MOV $81, A
	CALL CODE_0A82
CODE_0C04:
	MOV Y, #$02
	MOV A, ($B0)+y
	BMI CODE_0C12
	MOV $03+x, A
	MOV A, #$00
	MOV $04+x, A
	BRA CODE_0C2C

CODE_0C12:
	MOV Y, #$03
	MOV A, ($B0)+y
	MOV $03+x, A
	MOV Y, #$02
	MOV A, ($B0)+y
	CLRC
	AND A, #$7F
	LSR A
	MOV $04+x, A
	BCC CODE_0C2A
	MOV A, $03+x
	OR A, #$80
	MOV $03+x, A
CODE_0C2A:
	MOV Y, #$03
CODE_0C2C:
	INC Y
	MOV A, ($B0)+y
	BMI CODE_0C39
	MOV $05+x, A
	MOV A, #$00
	MOV $06+x, A
	BRA CODE_0C50

CODE_0C39:
	INC Y
	MOV A, ($B0)+y
	MOV $05+x, A
	DEC Y
	MOV A, ($B0)+y
	CLRC
	AND A, #$7F
	LSR A
	MOV $06+x, A
	BCC CODE_0C4F
	MOV A, $05+x
	OR A, #$80
	MOV $05+x, A
CODE_0C4F:
	INC Y
CODE_0C50:
	JMP CODE_0A74

CODE_0C53:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $0207+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0C61:
	POP X
	PUSH X
	MOV Y, #$01
	MOV A, #$06
	MOV $F1, A
	MOV A, ($B0)+y
	MOV $9E, A
	MOV Y, #$80
	MUL YA
	MOV X, $9F
	DIV YA, X
	MOV $FA, A
	MOV A, #$07
	MOV $F1, A
	MOV Y, #$01
	POP X
	CALL CODE_0A74
	JMP CODE_097F

CODE_0C82:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	ASL A
	MOV Y, A
	MOV A, DATA_1900+y
	MOV $020E+x, A
	MOV $020C+x, A
	INC Y
	MOV A, DATA_1900+y
	MOV $020F+x, A
	MOV $020D+x, A
	MOV A, #$01
	MOV $020B+x, A
	MOV Y, #$01
	CALL CODE_0A74
	JMP CODE_097F

CODE_0CA9:
	POP X
	MOV A, #$00
	MOV $020E+x, A
	MOV $020C+x, A
	MOV $020F+x, A
	MOV $020D+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0CBE:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $0281+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0CCC:
	POP X
	MOV Y, #$01
	MOV A, ($B0)+y
	MOV $0282+x, A
	MOV A, $B0
	CLRC
	ADC A, #$02
	MOV $0283+x, A
	MOV A, $B1
	ADC A, #$00
	MOV $0284+x, A
	CALL CODE_0A74
	JMP CODE_097F

CODE_0CE9:
	POP X
	MOV A, $0282+x
	DEC A
	MOV $0282+x, A
	BEQ CODE_0D00
	MOV A, $0283+x
	MOV $B0, A
	MOV A, $0284+x
	MOV $B1, A
	JMP CODE_0987

CODE_0D00:
	CALL CODE_0A74
	JMP CODE_097F

CODE_0D06:
	MOV A, $A4
	BNE CODE_0D0D
	JMP CODE_0B32

CODE_0D0D:
	MOV A, $B3
	MOV $9E, A
	MOV A, $B5
	MOV $9F, A
	MOV A, #$06
	MOV $F1, A
	MOV A, $9E
	MOV Y, #$80
	MUL YA
	MOV X, $9F
	DIV YA, X
	MOV $FA, A
	MOV A, #$07
	MOV $F1, A
	MOV A, #$00
	MOV $A3, A
	MOV X, #$00
	CALL CODE_0D59
	MOV X, #$10
	CALL CODE_0D59
	MOV X, #$20
	CALL CODE_0D59
	MOV X, #$30
	CALL CODE_0D59
	MOV X, #$40
	CALL CODE_0D59
	MOV X, #$50
	CALL CODE_0D59
	MOV X, #$60
	CALL CODE_0D59
	MOV X, #$70
	CALL CODE_0D59
	MOV Y, $B2
	POP X
	POP A
	POP A
	RET

CODE_0D59:
	MOV A, #$00
	MOV $020A+x, A
	MOV $0206+x, A
	MOV $0204+x, A
	MOV $020E+x, A
	MOV $020F+x, A
	MOV A, $0285+x
	MOV $00+x, A
	MOV A, $0286+x
	MOV $01+x, A
	MOV A, $0287+x
	MOV $03+x, A
	MOV A, $0288+x
	MOV $04+x, A
	MOV A, $0300+x
	MOV $0282+x, A
	MOV A, $0301+x
	MOV $0283+x, A
	MOV A, $0302+x
	MOV $0284+x, A
	MOV A, $0303+x
	MOV $0A+x, A
	MOV A, $0304+x
	MOV $08+x, A
	MOV A, $0305+x
	MOV $0D+x, A
	MOV A, $0306+x
	MOV $0E+x, A
	MOV A, $0307+x
	MOV $0B+x, A
	MOV A, $0308+x
	MOV $0C+x, A
	MOV A, $0309+x
	MOV $02+x, A
	MOV A, $030A+x
	MOV $0281+x, A
	MOV A, $030B+x
	MOV $0207+x, A
	MOV A, $030C+x
	MOV $020C+x, A
	MOV A, $030D+x
	MOV $020D+x, A
	MOV A, $030E+x
	MOV $020E+x, A
	MOV A, $030F+x
	MOV $020F+x, A
	MOV A, #$01
	MOV $020B+x, A
	RET

CODE_0DDD:
	MOV A, $9B
	INC A
	MOV Y, A
	SETC
	MOV A, DATA_1039+y
	SBC A, DATA_1039-$01+y
	MOV $9A, A
	MOV A, DATA_0FB9+y
	SBC A, DATA_0FB9-$01+y
	MOV $99, A
	PUSH X
	MOV Y, $99
	MOV A, $9A
	MOV X, #$10
	DIV YA, X
	POP X
	MOV Y, A
	BNE CODE_0E00
	MOV Y, #$01
CODE_0E00:
	MOV A, $0205+x
	MUL YA
	MOV $99, Y
	MOV $9A, A
	RET

CODE_0E09:
	MOV A, $0202+x
	MOV $92, A
	MOV Y, #$00
	MOV A, ($B0)+y
	CLRC
	ADC A, $08+x
	CLRC
	ADC A, $09+x
	MOV $9B, A
	CMP A, $92
	BCC CODE_0E63
	MOV A, $8F
	OR A, $B2
	MOV $8F, A
	CALL CODE_0DDD
	MOV Y, $9B
	MOV A, DATA_1039+y
	CLRC
	ADC A, $9A
	MOV $0200+x, A
	MOV A, DATA_0FB9+y
	ADC A, $99
	MOV $0201+x, A
	MOV A, $92
	MOV $9B, A
	CALL CODE_0DDD
	MOV Y, $9B
	MOV A, DATA_1039+y
	CLRC
	ADC A, $9A
	MOV $90, A
	MOV A, DATA_0FB9+y
	ADC A, $99
	MOV $91, A
	MOV A, $0200+x
	SETC
	SBC A, $90
	MOV $90, A
	MOV A, $0201+x
	SBC A, $91
	MOV $91, A
	BRA CODE_0EA8

CODE_0E63:
	MOV A, $B2
	EOR A, #$FF
	AND A, $8F
	MOV $8F, A
	CALL CODE_0DDD
	MOV Y, $9B
	MOV A, DATA_1039+y
	CLRC
	ADC A, $9A
	MOV $0200+x, A
	MOV A, DATA_0FB9+y
	ADC A, $99
	MOV $0201+x, A
	MOV A, $92
	MOV $9B, A
	CALL CODE_0DDD
	MOV Y, $9B
	MOV A, DATA_1039+y
	CLRC
	ADC A, $9A
	MOV $90, A
	MOV A, DATA_0FB9+y
	ADC A, $99
	MOV $91, A
	MOV A, $90
	SETC
	SBC A, $0200+x
	MOV $90, A
	MOV A, $91
	SBC A, $0201+x
	MOV $91, A
CODE_0EA8:
	PUSH X
	MOV A, $0204+x
	MOV $0F+x, A
	MOV X, A
	MOV A, $90
	MOV Y, $91
	DIV YA, X
	POP X
	MOV $0203+x, A
	MOV Y, #$00
	MOV A, ($B0)+y
	CLRC
	ADC A, $08+x
	CLRC
	ADC A, $09+x
	MOV $0202+x, A
	RET

CODE_0EC6:
	MOV A, $0204+x
	BNE CODE_0ECC
	RET

CODE_0ECC:
	MOV A, $0F+x
	BNE CODE_0ED1
	RET

CODE_0ED1:
	DEC $0F+x
	BNE CODE_0EE3
	MOV A, $0200+x
	MOV $0208+x, A
	MOV A, $0201+x
	MOV $0209+x, A
	BRA CODE_0F13

CODE_0EE3:
	MOV A, $8F
	AND A, $B2
	BNE CODE_0EFF
	MOV A, $0208+x
	SETC
	SBC A, $0203+x
	PUSH P
	MOV $0208+x, A
	MOV A, $0209+x
	POP P
	SBC A, #$00
	MOV $0209+x, A
	BRA CODE_0F13

CODE_0EFF:
	MOV A, $0208+x
	CLRC
	ADC A, $0203+x
	PUSH P
	MOV $0208+x, A
	MOV A, $0209+x
	POP P
	ADC A, #$00
	MOV $0209+x, A
CODE_0F13:
	MOV A, $07+x
	BNE CODE_0F18
	RET

CODE_0F18:
	MOV Y, #$02
	MOV A, $0208+x
	CALL CODE_04FD
	MOV Y, #$03
	MOV A, $0209+x
	CALL CODE_04FD
	RET

CODE_0F29:
	MOV A, $020E+x
	OR A, $020F+x
	BNE CODE_0F32
	RET

CODE_0F32:
	MOV A, $020B+x
	DEC A
	MOV $020B+x, A
	BEQ CODE_0F3C
	RET

CODE_0F3C:
	MOV A, $020E+x
	MOV $9C, A
	MOV A, $020F+x
	MOV $9D, A
	MOV Y, #$00
	MOV A, ($9C)+y
	CMP A, #$FF
	BNE CODE_0F60
	INC Y
	MOV A, ($9C)+y
	MOV $020E+x, A
	INC Y
	MOV A, ($9C)+y
	MOV $020F+x, A
	MOV A, #$01
	MOV $020B+x, A
	RET

CODE_0F60:
	MOV $020B+x, A
	INC Y
	MOV A, ($9C)+y
	BMI CODE_0F79
	CLRC
	ADC A, $0208+x
	MOV $0208+x, A
	MOV A, $0209+x
	ADC A, #$00
	MOV $0209+x, A
	BRA CODE_0F93

CODE_0F79:
	MOV A, ($9C)+y
	EOR A, #$FF
	CLRC
	ADC A, #$01
	MOV $82, A
	MOV A, $0208+x
	SETC
	SBC A, $82
	MOV $0208+x, A
	MOV A, $0209+x
	SBC A, #$00
	MOV $0209+x, A
CODE_0F93:
	MOV A, $07+x
	BEQ CODE_0FA7
	MOV A, $0209+x
	MOV Y, #$03
	CALL CODE_04FD
	MOV A, $0208+x
	MOV Y, #$02
	CALL CODE_04FD
CODE_0FA7:
	MOV A, $020E+x
	CLRC
	ADC A, #$02
	MOV $020E+x, A
	MOV A, $020F+x
	ADC A, #$00
	MOV $020F+x, A
	RET

DATA_0FB9:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$02,$02,$02,$02
	db $02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$05,$05,$05,$05
	db $06,$06,$07,$07,$08,$08,$08,$09,$0A,$0A,$0B,$0B,$0C,$0D,$0E,$0F
	db $10,$10,$11,$13,$14,$15,$16,$17,$19,$1A,$1C,$1E,$20,$21,$23,$26
	db $28,$2A,$2D,$2F,$32,$35,$39,$3C,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F

DATA_1039:
	db $10,$11,$12,$13,$14,$15,$16,$18,$19,$1B,$1C,$1E,$20,$22,$24,$26
	db $28,$2A,$2D,$30,$33,$36,$39,$3C,$40,$44,$48,$4C,$51,$55,$5B,$60
	db $66,$6C,$72,$79,$80,$88,$90,$98,$A1,$AB,$B5,$C0,$CB,$D7,$E4,$F2
	db $00,$0F,$1F,$30,$43,$56,$6A,$80,$96,$AF,$C8,$E3,$00,$1E,$3F,$61
	db $85,$AB,$D4,$FF,$2D,$5D,$90,$C7,$00,$3D,$7D,$C2,$0A,$57,$A8,$FE
	db $5A,$BA,$21,$8D,$00,$7A,$FB,$83,$14,$AE,$50,$FD,$B3,$74,$41,$1A
	db $00,$F4,$F6,$07,$29,$5C,$A1,$F9,$66,$E9,$82,$34,$00,$E7,$EB,$0E
	db $51,$B7,$41,$F2,$CC,$D1,$04,$68,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

CODE_10B9:
	MOV A, $F6
	MOV $8B, A
	MOV A, $F5
	ASL A
	MOV Y, A
	MOV A, DATA_1500+y
	MOV $84, A
	MOV A, DATA_1500+$01+y
	MOV $85, A
	MOV Y, #$00
	MOV A, $8B
	CMP A, #$FF
	BNE CODE_10D5
	MOV A, ($84)+y
CODE_10D5:
	PUSH A
	MOV X, A
	INC Y
	CLRC
	MOV A, Y
	ADC A, $84
	MOV $0289+x, A
	MOV A, #$00
	MOV $07+x, A
	ADC A, $85
	MOV $028A+x, A
	MOV A, #$01
	MOV $028B+x, A
	MOV A, #$02
	MOV $028C+x, A
	MOV A, #$00
	MOV $028D+x, A
	MOV A, #$FF
	MOV $8A, A
	MOV $89, A
	MOV A, #$00
	MOV $87, A
	MOV A, #$50
	MOV $88, A
	MOV A, #$03
	MOV $F1, A
	MOV A, #$FF
	MOV $FC, A
	MOV A, #$07
	MOV $F1, A
	POP A
CODE_1112:
	LSR A
	LSR A
	LSR A
	LSR A
	MOV X, A
	MOV Y, #$3D
	MOV $F2, Y
	MOV A, $F3
	AND A, DATA_1125+x
	MOV $F2, Y
	MOV $F3, A
CODE_1124:
	RET

DATA_1125:
	db $FE,$FD,$FB,$F7,$EF,$DF,$BF,$7F

CODE_112D:
	MOV A, $89
	CLRC
	ADC A, $87
	MOV $89, A
	MOV A, $8A
	ADC A, $88
	MOV $8A, A
	BCS CODE_113D
	RET

CODE_113D:
	MOV X, #$00
	MOV Y, #$01
	CALL CODE_1176
	MOV X, #$10
	MOV Y, #$02
	CALL CODE_1176
	MOV X, #$20
	MOV Y, #$04
	CALL CODE_1176
	MOV X, #$30
	MOV Y, #$08
	CALL CODE_1176
	MOV X, #$40
	MOV Y, #$10
	CALL CODE_1176
	MOV X, #$50
	MOV Y, #$20
	CALL CODE_1176
	MOV X, #$60
	MOV Y, #$40
	CALL CODE_1176
	MOV X, #$70
	MOV Y, #$80
	CALL CODE_1176
	RET

CODE_1176:
	MOV $86, Y
	MOV A, $028A+x
	BNE CODE_117E
	RET

CODE_117E:
	MOV A, $028B+x
	CMP A, $028C+x
	BNE CODE_118E
	MOV Y, #$5C
	MOV A, $86
	MOV $F2, Y
	MOV $F3, A
CODE_118E:
	MOV A, $028B+x
	DEC A
	MOV $028B+x, A
	BEQ CODE_1198
	RET

CODE_1198:
	MOV A, $0289+x
	MOV $84, A
	MOV A, $028A+x
	MOV $85, A
	MOV Y, #$00
	MOV A, ($84)+y
	BPL CODE_11AB
	JMP CODE_1234

CODE_11AB:
	MOV Y, #$01
	MOV A, ($84)+y
	CLRC
	ASL A
	MOV Y, A
	MOV A, DATA_1600+y
	MOV $80, A
	INC Y
	MOV A, DATA_1600+y
	MOV $81, A
	CALL CODE_0A82
	MOV A, $028F+x
	OR A, $028E+x
	BEQ CODE_11DA
	MOV A, $028E+x
	MOV Y, #$02
	CALL CODE_04FD
	MOV A, $028F+x
	MOV Y, #$03
	CALL CODE_04FD
	BRA CODE_1201

CODE_11DA:
	MOV Y, #$00
	MOV A, ($84)+y
	CLRC
	ADC A, $09+x
	MOV $9B, A
	CALL CODE_0DDD
	MOV Y, $9B
	MOV A, DATA_1039+y
	CLRC
	ADC A, $9A
	PUSH P
	MOV Y, #$02
	CALL CODE_04FD
	MOV Y, $9B
	POP P
	MOV A, DATA_0FB9+y
	ADC A, $99
	MOV Y, #$03
	CALL CODE_04FD
CODE_1201:
	MOV Y, #$02
	MOV A, ($84)+y
	MOV $028B+x, A
	INC Y
	MOV A, ($84)+y
	MOV $028C+x, A
	MOV A, $028D+x
	BNE CODE_1223
	MOV Y, #$5C
	MOV A, #$00
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$4C
	MOV A, $86
	MOV $F2, Y
	MOV $F3, A
CODE_1223:
	MOV Y, #$04
CODE_1225:
	CLRC
	MOV A, Y
	ADC A, $84
	MOV $0289+x, A
	MOV A, #$00
	ADC A, $85
	MOV $028A+x, A
	RET

CODE_1234:
	CMP A, #$FF
	BNE CODE_1245
	MOV A, #$00
	MOV $028A+x, A
	MOV A, #$01
	MOV $07+x, A
	MOV A, X
	JMP CODE_1112

CODE_1245:
	CMP A, #$FE
	BNE CODE_1256
	MOV A, #$01
	MOV $028D+x, A
	MOV Y, #$01
	CALL CODE_1225
	JMP CODE_1198

CODE_1256:
	CMP A, #$FD
	BNE CODE_1267
	MOV A, #$00
	MOV $028D+x, A
	MOV Y, #$01
	CALL CODE_1225
	JMP CODE_1198

CODE_1267:
	CMP A, #$FC
	BNE CODE_12B6
	MOV Y, #$3D
	MOV $F2, Y
	MOV A, $F3
	OR A, $86
	MOV $F2, Y
	MOV $F3, A
	MOV A, $028E+x
	OR A, $028F+x
	BEQ CODE_1296
	MOV Y, #$6C
	MOV $F2, Y
	MOV A, $F3
	AND A, #$E0
	MOV $82, A
	MOV A, $028E+x
	AND A, #$1F
	OR A, $82
	MOV $F2, Y
	MOV $F3, A
	BRA CODE_12AE

CODE_1296:
	MOV Y, #$6C
	MOV $F2, Y
	MOV A, $F3
	AND A, #$E0
	MOV $82, A
	MOV Y, #$01
	MOV A, ($84)+y
	AND A, #$1F
	OR A, $82
	MOV Y, #$6C
	MOV $F2, Y
	MOV $F3, A
CODE_12AE:
	MOV Y, #$02
	CALL CODE_1225
	JMP CODE_1198

CODE_12B6:
	CMP A, #$FB
	BNE CODE_12D4
	MOV A, $86
	EOR A, #$FF
	MOV $8D, A
	MOV Y, #$3D
	MOV $F2, Y
	MOV A, $F3
	AND A, $8D
	MOV $F2, Y
	MOV $F3, A
	MOV Y, #$01
	CALL CODE_1225
	JMP CODE_1198

CODE_12D4:
	CMP A, #$FA
	BNE CODE_12E7
	INC Y
	MOV A, ($84)+y
	MOV $0289+x, A
	INC Y
	MOV A, ($84)+y
	MOV $028A+x, A
	JMP CODE_1198

CODE_12E7:
	INC Y
	CALL CODE_1225
	JMP CODE_1198

UNK_12EE:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00

DATA_1300:					; Note: Music data pointers
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_1500:					; Note: Sound effect pointers.
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_1600:					; Note: Music sample pointers?
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_1680:					; Note: Sound effect sample pointers
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_1700:					; Note: Music sample pointers?
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

DATA_1900:
	dw DATA_194C,DATA_1969,DATA_199E,DATA_1969,DATA_1969,DATA_1969,DATA_1969,DATA_1969
	dw DATA_1969,DATA_1969,DATA_1969,DATA_1969,DATA_1969,DATA_1969,DATA_1969,DATA_1969

UNK_1920:
	db "SNES MUSIC PLAYER (C) 1994 MARK T.W. COOKSEY"

DATA_194C:
	db $06,$00,$08,$14,$08,$EC,$08,$EC,$08,$14,$08,$16,$08,$EA,$08,$EA
	db $08,$16,$08,$18,$08,$E8,$08,$E8,$08,$18,$FF,$5E,$19

DATA_1969:
	db $0A,$00,$06,$50,$06,$B0,$06,$B0,$06,$50,$06,$5A,$06,$A6,$06,$A6
	db $06,$5A,$06,$64,$06,$9C,$06,$9C,$06,$64,$06,$5A,$06,$A6,$06,$A6
	db $06,$5A,$06,$50,$06,$B0,$06,$B0,$06,$50,$06,$46,$06,$BA,$06,$BA
	db $06,$46,$FF,$93,$19

DATA_199E:
	db $0A,$00,$06,$0A,$06,$F6,$06,$F6,$06,$0A,$FF,$A0,$19

CODE_19AB:
	CALL CODE_07C1
	CALL CODE_07E2
	MOV A, #$A0
	MOV Y, #$6C
	MOV $F2, Y
	MOV $F3, A
	JMP !REGISTER_SPC700_IPLROMLoc

CODE_19BC:
	MOV A, #$00
	MOV Y, #$3D
	MOV $F2, Y
	MOV $F3, A
	RET

UNK_19C5:
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
%SPCDataBlockEnd(0400)

%EndSPCUploadAndJumpToEngine($0400)
