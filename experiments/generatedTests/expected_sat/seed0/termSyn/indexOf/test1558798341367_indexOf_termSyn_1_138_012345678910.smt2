(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x2227 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x2753 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x1006 (str.indexof ?x2753 ?x2753 ?x2227)))
 (= ?x1006 ?x229))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


