(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x816 (str.at tmp_str0 tmp_int1)))
 (let ((?x1363 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (= (str.replace ?x1363 ?x1363 ?x816) ?x816))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


