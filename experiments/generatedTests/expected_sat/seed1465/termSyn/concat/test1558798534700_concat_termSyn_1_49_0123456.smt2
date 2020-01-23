(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int14 () Int)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x1478 (str.at tmp_str0 tmp_int14)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.++ ?x302 (int.to.str tmp_int4)) ?x1478))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_int14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_int14 = 0


