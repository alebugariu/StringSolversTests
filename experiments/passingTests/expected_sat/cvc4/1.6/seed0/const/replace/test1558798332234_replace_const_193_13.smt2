(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(assert
 (= (str.replace "\x07" tmp_str1 """a""") tmp_str3))
(check-sat)

(get-value (tmp_str1 tmp_str3 ))
(get-info :reason-unknown)

;tmp_str1 = 
;tmp_str3 = "a"


;actual status: sat

;model:
;String tmp_str3 = ""a""\a
;String tmp_str1 = 
