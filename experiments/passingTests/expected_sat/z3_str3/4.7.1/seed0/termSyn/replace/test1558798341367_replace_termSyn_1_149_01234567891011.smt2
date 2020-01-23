(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(assert
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x53 (str.replace ?x118 ?x130 ?x130)))
 (= ?x53 (str.replace tmp_str0 tmp_str24 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str24 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str24 = aaaaaaaaaaaaax
