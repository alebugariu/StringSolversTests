(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int9 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x185 (str.substr tmp_str0 tmp_int9 tmp_int9)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x390 (str.replace ?x2321 ?x2321 ?x185)))
 (= ?x390 ?x185)))))
(check-sat)

(get-value (tmp_str0 tmp_int9 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1


