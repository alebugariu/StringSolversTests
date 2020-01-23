(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(assert
 (= (str.indexof "\x07" "0" (- 1)) tmp_int3))
(check-sat)

(get-info :reason-unknown)

;tmp_int3 = -1
;actual status: sat
