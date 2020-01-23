(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "a" tmp_str1 "2") tmp_str3))
(check-sat)

(get-value (tmp_str1 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = 2a


;actual status: sat

;model:
;String tmp_str3 = 2a
;String tmp_str1 = 
