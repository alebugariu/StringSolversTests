(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x2477 (str.replace "\n" tmp_str1 "2")))
 (= ?x2477 "2")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = \n


;actual status: sat

;model:
;String tmp_str1 = \n
