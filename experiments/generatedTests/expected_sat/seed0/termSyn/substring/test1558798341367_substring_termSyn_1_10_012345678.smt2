(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x2777 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (= (str.substr ?x972 ?x2777 (str.to.int tmp_str0)) ?x972))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


