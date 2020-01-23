(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (= (str.++ "" "") ""))
(check-sat)

(get-info :reason-unknown)
;actual status: not_implemented
;PC: @          0x1a85a80 (unknown)
;*** SIGSEGV (@0x1a85a80) received by PID 2715 (TID 0x7ff1221f1740) from PID 27810432; stack trace: ***
;    @     0x7ff120c414b0 (unknown)
;    @          0x1a85a80 (unknown)
