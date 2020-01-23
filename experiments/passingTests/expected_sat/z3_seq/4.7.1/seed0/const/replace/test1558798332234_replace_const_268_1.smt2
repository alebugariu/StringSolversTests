(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2441 (str.replace "\n" tmp_str1 "\n")))
 (= ?x2441 "\n")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = "a"


;actual status: sat

;model:
;String tmp_str1 = \n
