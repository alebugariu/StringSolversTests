(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x662 (str.replace tmp_str0 tmp_str1 "")))
 (= ?x662 "\x07")))
(check-sat)

(get-value (tmp_str0 tmp_str1 ))
(get-info :reason-unknown)

;tmp_str0 = 
;tmp_str1 = 


;actual status: sat

;model:
;String tmp_str1 = al
;String tmp_str0 = \x07
