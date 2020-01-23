(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1901 (str.replace "a" "-1" tmp_str2)))
 (= ?x1901 "a")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = 


;actual status: sat
;((tmp_str2 ""))

;model:
;String tmp_str2 = 
