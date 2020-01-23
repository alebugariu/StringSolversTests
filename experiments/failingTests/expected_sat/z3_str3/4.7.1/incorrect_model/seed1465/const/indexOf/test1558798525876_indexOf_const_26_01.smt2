(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1165 (str.indexof tmp_str0 tmp_str1 2)))
 (= ?x1165 2)))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_str1 = 


;actual status: incorrect_model

;model:
;String tmp_str1 = WamWamW
;String tmp_str0 = jWamWamWamWamWaaaadWamWamWb
