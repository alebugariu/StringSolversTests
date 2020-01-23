(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2532 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x1904 (str.indexof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1) ?x2532)))
 (= ?x1904 ?x2532))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


