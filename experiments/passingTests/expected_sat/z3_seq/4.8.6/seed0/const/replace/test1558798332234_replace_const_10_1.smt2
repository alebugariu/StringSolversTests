(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x700 (str.replace "" tmp_str1 "a")))
 (= ?x700 "")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = "a"


;actual status: sat
;((tmp_str1 "\x00"))

;model:
;String tmp_str1 = \x00
