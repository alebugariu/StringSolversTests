(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 tmp_int1) "2"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 2
;tmp_int1 = 0
;actual status: sat
