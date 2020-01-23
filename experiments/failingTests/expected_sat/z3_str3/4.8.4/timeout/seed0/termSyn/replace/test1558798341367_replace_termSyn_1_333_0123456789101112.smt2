(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str26 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1263 (str.substr tmp_str0 tmp_int5 tmp_int5)))
 (let ((?x644 (str.replace ?x130 ?x1263 ?x130)))
 (= ?x644 (str.replace tmp_str0 tmp_str26 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str26 = 


;actual status: timeout
