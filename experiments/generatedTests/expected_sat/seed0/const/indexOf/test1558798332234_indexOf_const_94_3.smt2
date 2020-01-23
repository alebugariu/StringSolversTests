(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(assert
 (= (str.indexof "\x07" "2" 0) tmp_int3))
(check-sat)

(get-value (tmp_int3 ))
(get-info :reason-unknown)

;tmp_int3 = -1


