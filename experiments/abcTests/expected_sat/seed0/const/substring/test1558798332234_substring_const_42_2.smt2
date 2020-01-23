(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (= (str.substr "\n" 2 tmp_int2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int2 = -1
