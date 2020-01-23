(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2147 (str.replace tmp_str0 tmp_str0 tmp_str16)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x632 (str.substr ?x130 ?x1327 ?x1327)))
 (= ?x632 ?x2147))))))
(check-sat)

(get-value (tmp_str0 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 


;actual status: sat

;model:
;String tmp_str0 = 
;String tmp_str16 = 
