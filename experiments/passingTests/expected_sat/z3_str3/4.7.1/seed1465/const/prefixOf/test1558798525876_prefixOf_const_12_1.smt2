(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str1 () String)
(assert
 (let (($x455 (str.prefixof "-1" tmp_str1)))
 (= $x455 true)))
(check-sat)

(get-value (tmp_str1 ))
(get-info :reason-unknown)

;tmp_str1 = -1


;actual status: sat

;model:
;String tmp_str1 = -1aan
