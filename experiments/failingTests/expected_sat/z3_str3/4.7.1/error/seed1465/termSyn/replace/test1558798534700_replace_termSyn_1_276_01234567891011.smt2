(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x381 (str.replace tmp_str0 tmp_str24 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2497 (str.at tmp_str0 tmp_int5)))
 (let ((?x1846 (str.replace ?x2321 ?x2497 ?x2321)))
 (= ?x1846 ?x381))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str24 = 


;actual status: not_implemented
