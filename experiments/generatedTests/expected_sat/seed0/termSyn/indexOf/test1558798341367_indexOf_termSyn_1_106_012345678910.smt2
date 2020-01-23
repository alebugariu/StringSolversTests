(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int20 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2760 (str.indexof tmp_str0 tmp_str0 tmp_int20)))
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (= (str.indexof ?x2052 ?x2052 ?x229) ?x2760)))))
(check-sat)

(get-value (tmp_str0 tmp_int20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int20 = -1


