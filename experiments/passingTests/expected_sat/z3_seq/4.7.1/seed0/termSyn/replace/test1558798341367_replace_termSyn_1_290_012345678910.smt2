(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str24 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x725 (str.++ tmp_str0 tmp_str24)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2388 (str.replace ?x130 ?x118 ?x130)))
 (= ?x2388 ?x725))))))
(check-sat)

(get-value (tmp_str0 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str24 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str24 = 
