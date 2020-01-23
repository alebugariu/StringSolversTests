(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1387 (str.indexof tmp_str0 tmp_str1 0)))
 (= ?x1387 (- 1))))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = "a"


;actual status: sat

;model:
;String tmp_str1 = A
;String tmp_str0 = 
