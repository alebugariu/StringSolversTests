(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (let (($x2200 (str.contains tmp_str0 "-1")))
 (= $x2200 true)))
(check-sat)

(get-value (tmp_str0 ))
(get-info :reason-unknown)

;tmp_str0 = -1


;actual status: sat

;model:
;String tmp_str0 = ah-1aaaq
