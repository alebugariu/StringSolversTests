(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str22 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x2127 (str.replace tmp_str0 tmp_str22 tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1313 (int.to.str tmp_int4)))
 (let ((?x437 (str.replace ?x130 ?x1313 ?x130)))
 (= ?x437 ?x2127))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str22 = 


