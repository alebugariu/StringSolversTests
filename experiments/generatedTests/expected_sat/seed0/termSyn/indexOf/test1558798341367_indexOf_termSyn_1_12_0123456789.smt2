(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2777 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (= (str.indexof (str.at tmp_str0 tmp_int1) (int.to.str tmp_int1) ?x2777) ?x2777)))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


