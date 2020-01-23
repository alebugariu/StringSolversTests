(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2356 (str.at tmp_str0 tmp_int8)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.replace ?x2321 ?x2321 (int.to.str tmp_int8)) ?x2356))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


