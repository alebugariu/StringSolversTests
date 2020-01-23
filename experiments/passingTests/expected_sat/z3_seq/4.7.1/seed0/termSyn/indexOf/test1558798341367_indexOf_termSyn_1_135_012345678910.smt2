(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2227 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x2052 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2753 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (= (str.indexof ?x2753 ?x2052 ?x229) ?x2227))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -2
;String tmp_str0 = \x00
