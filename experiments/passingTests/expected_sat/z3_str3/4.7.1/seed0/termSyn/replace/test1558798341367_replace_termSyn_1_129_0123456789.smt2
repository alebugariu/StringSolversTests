(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str22 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x389 (str.replace ?x118 ?x118 ?x130)))
 (= ?x389 (str.++ tmp_str0 tmp_str22))))))
(check-sat)

(get-value (tmp_str0 tmp_str22 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str22 = 


;actual status: sat

;model:
;String tmp_str0 = h
;String tmp_str22 = 
