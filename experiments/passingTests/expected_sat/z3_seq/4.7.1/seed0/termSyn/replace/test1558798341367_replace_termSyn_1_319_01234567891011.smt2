(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str26 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1853 (str.replace ?x130 ?x130 ?x130)))
 (= ?x1853 (str.++ tmp_str0 tmp_str26)))))
(check-sat)

(get-value (tmp_str0 tmp_str26 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str26 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str26 = 
