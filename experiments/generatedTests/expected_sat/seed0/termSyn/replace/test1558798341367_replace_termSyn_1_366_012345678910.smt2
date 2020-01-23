(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1450 (str.replace ?x2040 ?x118 ?x118)))
 (= ?x1450 ?x2040)))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


