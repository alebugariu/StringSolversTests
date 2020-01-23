(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str13 () String)
(assert
 (let ((?x229 (int.to.str tmp_int0)))
 (= (str.replace ?x229 ?x229 ?x229) (str.at tmp_str13 tmp_int0))))
(check-sat)

(get-value (tmp_int0 tmp_str13 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str13 = a


