(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(assert
 (let ((?x381 (str.replace tmp_str0 tmp_str24 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2216 (str.replace ?x2321 ?x2321 ?x2008)))
 (= ?x2216 ?x381))))))
(check-sat)

(get-value (tmp_str0 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str24 = 


;actual status: sat

;model:
;String tmp_str0 = \x00\x00
;String tmp_str24 = 
