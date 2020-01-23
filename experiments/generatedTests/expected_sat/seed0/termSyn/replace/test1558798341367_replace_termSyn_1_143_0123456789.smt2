(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int8 () Int)
(assert
 (let ((?x2480 (str.++ tmp_str0 tmp_str22)))
 (let ((?x2845 (str.at tmp_str0 tmp_int8)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2025 (str.replace ?x118 ?x130 ?x2845)))
 (= ?x2025 ?x2480)))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1
;tmp_str22 = 


