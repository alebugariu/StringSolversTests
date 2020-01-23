(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2380 (str.substr tmp_str0 tmp_int1 tmp_int2)))
 (= ?x2380 "-1")))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_int1 = 0
;tmp_int2 = 2


