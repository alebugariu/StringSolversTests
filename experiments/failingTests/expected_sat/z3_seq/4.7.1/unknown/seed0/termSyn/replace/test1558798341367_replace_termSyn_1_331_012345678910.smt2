(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1273 (int.to.str tmp_int5)))
 (let ((?x1263 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x675 (str.replace ?x130 ?x1263 ?x1273)))
 (= ?x675 ?x130))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: unknown
