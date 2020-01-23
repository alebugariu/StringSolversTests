(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2390 (str.replace "\n" tmp_str1 tmp_str2)))
 (= ?x2390 "2")))
(check-sat)

(get-value (tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str1 = \n
;tmp_str2 = 2


;actual status: sat

;model:
;String tmp_str2 = 2
;String tmp_str1 = \n
