(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str18 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.replace (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1) (int.to.str tmp_int1)) (str.replace tmp_str0 tmp_str0 tmp_str18)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str18 = 
