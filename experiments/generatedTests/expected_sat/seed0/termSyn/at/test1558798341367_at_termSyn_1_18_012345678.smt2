(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x2025 (str.replace tmp_str0 tmp_str0 tmp_str14)))
 (let ((?x2514 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x2209 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2642 (str.at ?x2209 ?x2514)))
 (= ?x2642 ?x2025))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str14 = 


