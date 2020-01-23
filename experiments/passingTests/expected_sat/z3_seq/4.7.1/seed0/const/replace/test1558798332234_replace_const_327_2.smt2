(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x658 (str.replace "-1" "" tmp_str2)))
 (= ?x658 "2-1")))
(check-sat)

(get-value (tmp_str2 ))
(get-info :reason-unknown)

;tmp_str2 = 2


;actual status: sat

;model:
;String tmp_str2 = 2
