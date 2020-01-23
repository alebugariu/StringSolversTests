(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let ((?x934 (str.replace "2" tmp_str1 "0")))
 (= ?x934 "0")))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = 2


;actual status: sat

;model:
;String tmp_str1 = 2
