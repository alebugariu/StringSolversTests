(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x1623 (str.replace "a" tmp_str1 tmp_str2)))
 (= ?x1623 "\na")))
(check-sat)

(get-value (tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str2 = \n


;actual status: sat

;model:
;String tmp_str2 = \n
;String tmp_str1 = 
