(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str20 () String)
(assert
 (let ((?x1762 (str.replace tmp_str0 tmp_str20 tmp_str0)))
 (let ((?x118 (str.++ tmp_str0 tmp_str0)))
 (let ((?x725 (str.replace ?x118 ?x118 ?x118)))
 (= ?x725 ?x1762)))))
(check-sat)

(get-value (tmp_str0 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str20 = 


;actual status: sat

;model:
;String tmp_str20 = aad
;String tmp_str0 = 
