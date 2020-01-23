(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.substr "\n" tmp_int1 tmp_int2) ""))
(check-sat)

(get-info :reason-unknown)

;tmp_int1 = -1
;tmp_int2 = -1
