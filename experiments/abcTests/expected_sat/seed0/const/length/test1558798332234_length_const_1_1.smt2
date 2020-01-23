(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.len "\"a\"") tmp_int1))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = 3
