(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x184 (str.++ "" tmp_str1)))
 (= ?x184 "\n")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = \n


;actual status: sat

;model:
;String tmp_str1 = \n
