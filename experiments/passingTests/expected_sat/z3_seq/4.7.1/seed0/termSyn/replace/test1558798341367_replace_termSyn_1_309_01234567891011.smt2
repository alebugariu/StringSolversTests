(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int9 () Int)
(assert
 (let ((?x112 (str.at tmp_str0 tmp_int9)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2570 (str.replace ?x130 ?x130 ?x112)))
 (= ?x2570 (str.replace tmp_str0 tmp_str0 tmp_str22))))))
(check-sat)

(get-value (tmp_str0 tmp_int9 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int9 = -1
;tmp_str22 = 


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int9 = -1
;String tmp_str22 = 
