(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2085 (str.len tmp_str0)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2585 (str.indexof ?x1783 ?x1783 ?x2085)))
 (= ?x2585 ?x1907))))))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = a


