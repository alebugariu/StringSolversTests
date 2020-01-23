(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1625 (str.at tmp_str0 tmp_int5)))
 (let ((?x2127 (str.++ ?x302 ?x1625)))
 (= ?x2127 ?x302)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


