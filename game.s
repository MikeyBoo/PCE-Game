;
; File generated by cc65 v 2.18 - Git 17c5504
;
	.fopt		compiler,"cc65 v 2.18 - Git 17c5504"
	.setcpu		"6502"
	.smart		on
	.autoimport	on
	.case		on
	.debuginfo	on
	.importzp	sp, sreg, regsave, regbank
	.importzp	tmp1, tmp2, tmp3, tmp4, ptr1, ptr2, ptr3, ptr4
	.macpack	longbranch
	.dbg		file, "game.c", 185, 1595419487
	.dbg		file, "D:\cc65\include/stdlib.h", 5999, 1593898138
	.dbg		file, "D:\cc65\include/conio.h", 8941, 1593898138
	.dbg		file, "D:\cc65\include/stdarg.h", 2913, 1593898138
	.dbg		file, "D:\cc65\include/target.h", 2992, 1593898138
	.dbg		file, "D:\cc65\include/cbm.h", 11536, 1593898138
	.dbg		file, "D:\cc65\include/stddef.h", 3057, 1593898138
	.dbg		file, "D:\cc65\include/c64.h", 7001, 1593898138
	.dbg		file, "D:\cc65\include/_vic2.h", 10835, 1593898138
	.dbg		file, "D:\cc65\include/_sid.h", 3626, 1593898138
	.dbg		file, "D:\cc65\include/_6526.h", 3962, 1593898138
	.dbg		file, "D:\cc65\include/cbm_filetype.h", 4949, 1593898138
	.forceimport	__STARTUP__
	.dbg		sym, "clrscr", "00", extern, "_clrscr"
	.dbg		sym, "cprintf", "00", extern, "_cprintf"
	.import		_clrscr
	.import		_cprintf
	.export		_main

.segment	"RODATA"

_Text:
	.byte	$54,$48,$49,$53,$20,$49,$53,$20,$4D,$59,$20,$4D,$45,$53,$53,$41
	.byte	$47,$45,$00
L000A:
	.byte	$25,$53,$00

; ---------------------------------------------------------------
; int __near__ main (void)
; ---------------------------------------------------------------

.segment	"CODE"

.proc	_main: near

	.dbg	func, "main", "00", extern, "_main"

.segment	"CODE"

;
; clrscr ();
;
	.dbg	line, "game.c", 7
	jsr     _clrscr
;
; cprintf ("%s", Text);
;
	.dbg	line, "game.c", 8
	lda     #<(L000A)
	ldx     #>(L000A)
	jsr     pushax
	lda     #<(_Text)
	ldx     #>(_Text)
	jsr     pushax
	ldy     #$04
	jsr     _cprintf
;
; return EXIT_SUCCESS;
;
	.dbg	line, "game.c", 9
	ldx     #$00
	txa
;
; }
;
	.dbg	line, "game.c", 10
	rts

	.dbg	line
.endproc

