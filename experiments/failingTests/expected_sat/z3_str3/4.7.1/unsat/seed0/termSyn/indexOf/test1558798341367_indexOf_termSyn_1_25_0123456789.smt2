(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x2777 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x925 (str.indexof ?x972 ?x2040 ?x2777)))
 (= ?x925 ?x1081)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: unsat
