(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (= (str.replace tmp_str0 tmp_str1 tmp_str2) "2-1"))
(check-sat)

(get-value (tmp_str0 tmp_str1 tmp_str2 ))
(get-info :reason-unknown)

;tmp_str0 = -1
;tmp_str1 = 
;tmp_str2 = 2


;actual status: sat

;model:
;String tmp_str2 = i
;String tmp_str1 = aq
;String tmp_str0 = 2-1
