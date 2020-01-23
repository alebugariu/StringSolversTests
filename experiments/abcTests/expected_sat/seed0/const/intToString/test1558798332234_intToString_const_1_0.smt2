(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (= (int.to.str tmp_int0) "0"))
(check-sat)

(get-info :reason-unknown)

;tmp_int0 = 0
