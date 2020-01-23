(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x681 (str.replace tmp_str0 tmp_str1 """a""")))
 (= ?x681 """a""\n")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = \n
;tmp_str1 = 


;actual status: sat

;model:
;String tmp_str1 = ak
;String tmp_str0 = ""a""\n
