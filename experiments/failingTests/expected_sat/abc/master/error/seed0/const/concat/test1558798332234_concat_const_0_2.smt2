(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (= (str.++ "" "") tmp_str2))
(check-sat)

(get-info :reason-unknown)

;tmp_str2 = 
;actual status: not_implemented
;PC: @          0x15d9ae0 (unknown)
;*** SIGSEGV (@0x15d9ae0) received by PID 2711 (TID 0x7f8c69390740) from PID 22911712; stack trace: ***
;    @     0x7f8c67de04b0 (unknown)
;    @          0x15d9ae0 (unknown)
