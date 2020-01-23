(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str24 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let ((?x381 (str.replace tmp_str0 tmp_str24 tmp_str0)))
 (let ((?x2513 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x725 (str.replace ?x2008 ?x2513 ?x2513)))
 (= ?x725 ?x381))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str24 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str24 = 


;actual status: sat

;model:
;Int tmp_int4 = 0
;String tmp_str0 = 
;String tmp_str24 = aaaaae
