(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str18 () String)
(assert
 (let ((?x2060 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x95 (str.++ ?x2060 ?x2060)))
 (= ?x95 (str.replace tmp_str0 tmp_str18 tmp_str0)))))
(check-sat)

(get-value (tmp_str0 tmp_str18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str18 = 


;actual status: sat

;model:
;String tmp_str18 = aal
;String tmp_str0 = 
